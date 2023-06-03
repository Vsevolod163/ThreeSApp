//
//  CartTableViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 03.06.2023.
//

import UIKit

final class CartViewController: UIViewController {
    
    @IBOutlet var cartTableView: UITableView!
    
    var productsInCart: [CartProduct]!
    private let storageManager = StorageManager.shared
    
    override func viewWillAppear(_ animated: Bool) {
        overrideUserInterfaceStyle = .light
        cartTableView.rowHeight = 130
        fetchData()
        cartTableView.reloadData()
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
}
    
// MARK: - TableViewDataSource
extension CartViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productsInCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productInCart", for: indexPath)
        let product = productsInCart[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = product.name
        content.secondaryText = product.price
        content.image = UIImage(named: product.name ?? "")
        cell.contentConfiguration = content
         
        return cell
    }
 
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             storageManager.deleteFromCart(productsInCart[indexPath.row])
             productsInCart.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .fade)
         }
     }
}

// MARK: - TableViewDelegate
extension CartViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
