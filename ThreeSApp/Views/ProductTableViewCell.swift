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
    
    func configure(with product: CartProduct) {
        productImageView.image = UIImage(named: product.name ?? "")
        nameLabel.text = product.name
        priceLabel.text = "\(product.price) Р"
        countLabel.text = "\(product.count) шт"
    }
}
