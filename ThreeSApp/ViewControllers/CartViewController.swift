//
//  CartTableViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 03.06.2023.
//

import UIKit
import MessageUI

final class CartViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet var emptyCartLabel: UILabel!
    @IBOutlet var totalCostLabel: UILabel!
    @IBOutlet var cartTableView: UITableView!
    
    var productsInCart: [CartProduct]!
    var allProducts: [CurrentProduct]!
    
    private let storageManager = StorageManager.shared
    private var totalCost = 0
    
    override func viewWillAppear(_ animated: Bool) {
        overrideUserInterfaceStyle = .light
        cartTableView.rowHeight = 130
        
        fetchCartData()
        fetchAllProducts()
        cartTableView.reloadData()
        
        if productsInCart.isEmpty {
            emptyCartLabel.isHidden = false
            totalCostLabel.isHidden = true
        } else {
            emptyCartLabel.isHidden = true
            totalCostLabel.isHidden = false
        }
        
        setTotalCostLabelUI()
    }
    
    @IBAction func clearCart(_ sender: UIBarButtonItem) {
        for index in productsInCart.indices {
            storageManager.delete(productsInCart[index])
        }
        productsInCart.removeAll()
        cartTableView.reloadData()
        emptyCartLabel.isHidden = false
        totalCostLabel.isHidden = true
    }
    
    @IBAction func deleteItem(_ sender: UIButton) {
        let buttonPosition = sender.convert(CGPoint.zero, to: cartTableView)
        
        if let indexPath = cartTableView.indexPathForRow(at: buttonPosition) {
            let rowIndex = indexPath.row
            let product = productsInCart[rowIndex]
            
            for currentProduct in allProducts {
                if currentProduct.name == product.name {
                    storageManager.deleteOneItem(product, currentProduct: currentProduct)
                    break
                }
            }
            
            if product.count == 0 {
                productsInCart.remove(at: indexPath.row)
                storageManager.deleteFromCart(product)
                cartTableView.deleteRows(at: [indexPath], with: .fade)
                
                if productsInCart.isEmpty {
                    emptyCartLabel.isHidden = false
                    totalCostLabel.isHidden = true
                }
                return
            }
            
            cartTableView.reloadData()
        }
    }
    
    @IBAction func addItem(_ sender: UIButton) {
        let buttonPosition = sender.convert(CGPoint.zero, to: cartTableView)
        
        if let indexPath = cartTableView.indexPathForRow(at: buttonPosition) {
            let rowIndex = indexPath.row
            let product = productsInCart[rowIndex]
            
            for currentProduct in allProducts {
                if currentProduct.name == product.name {
                    storageManager.update(product, currentProduct: currentProduct)
                    cartTableView.reloadData()
                    break
                }
            }
        }
    }
    
    private func fetchCartData() {
        storageManager.fetchCartData { result in
            switch result {
            case .success(let products):
                productsInCart = products
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    private func fetchAllProducts() {
        storageManager.fetchData { result in
            switch result {
            case .success(let products):
                allProducts = products
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func setTotalCostLabelUI() {
        totalCost = 0
        
        for product in productsInCart {
            totalCost += Int(product.price)
        }
        
        totalCostLabel.text = "Итого \(totalCost) Р"
    }
}
    
// MARK: - TableViewDataSource
extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productsInCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productInCart", for: indexPath) as! ProductTableViewCell
        
        let product = productsInCart[indexPath.row]
        cell.configure(withProduct: product)
        
        if productsInCart.isEmpty {
            emptyCartLabel.isHidden = false
            totalCostLabel.isHidden = true
        }
        
        setTotalCostLabelUI()
                
        return cell
    }
 
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             storageManager.deleteFromCart(productsInCart[indexPath.row])
             productsInCart.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .fade)
             
             if productsInCart.isEmpty {
                 emptyCartLabel.isHidden = false
                 totalCostLabel.isHidden = true
             }
             
             setTotalCostLabelUI()
         }
     }
}

// MARK: - TableViewDelegate
extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
