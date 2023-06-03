//
//  CartTableViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 03.06.2023.
//

import UIKit

final class CartViewController: UIViewController {
    
    @IBOutlet var emptyCartLabel: UILabel!
    @IBOutlet var cartTableView: UITableView!
    @IBOutlet var totalCostLabel: UILabel!
    
    var productsInCart: [CartProduct]!
    private let storageManager = StorageManager.shared
    private var totalCost = 0
    
    override func viewWillAppear(_ animated: Bool) {
        overrideUserInterfaceStyle = .light
        cartTableView.rowHeight = 130
        fetchData()
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
    
    private func fetchData() {
        storageManager.fetchCartData { result in
            switch result {
            case .success(let products):
                productsInCart = products
            case .failure(let error):
                print(error.localizedDescription)
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
        cell.configure(with: product)
         
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
