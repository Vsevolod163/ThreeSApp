//
//  CartTableViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 03.06.2023.
//

import UIKit

final class CartTableViewController: UITableViewController {
    private let storageManager = StorageManager.shared
    private var productsInCart: [CartProduct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 130
        fetchData()
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
extension CartTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productsInCart.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productInCart", for: indexPath)
        let product = productsInCart[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = product.name
        content.secondaryText = product.price
        content.image = UIImage(named: product.name ?? "")
        cell.contentConfiguration = content
         
        return cell
    }
 
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             productsInCart.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .fade)
         }
     }
}


