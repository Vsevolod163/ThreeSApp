//
//  ProductTableViewCell.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 03.06.2023.
//

import UIKit

final class ProductTableViewCell: UITableViewCell {
    @IBOutlet var productImageView: UIImageView!

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var addButton: UIButton!
    
    private let storageManager = StorageManager.shared
    private var allProducts: [CurrentProduct]!
    private var currentProduct: CurrentProduct!
    
    func configure(withProduct product: CartProduct, tableView: UITableView) {
        productImageView.image = UIImage(named: product.name ?? "")
        nameLabel.text = product.name
        priceLabel.text = "\(product.price) Р"
        countLabel.text = "\(product.count) шт"
    }
    
    private func fetchProductsData() {
        storageManager.fetchData { result in
            switch result {
            case .success(let products):
                allProducts = products
            case .failure(let error):
                print(error)
            }
        }
    }
}
