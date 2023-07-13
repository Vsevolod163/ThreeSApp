//
//  ProductTableViewCell.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 10.07.2023.
//


import UIKit

final class ProductTableViewCell: UITableViewCell {

    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var costButton: UIButton!
    
    func configure(with product: CurrentProduct) {
        productImageView.image = UIImage(named: product.name ?? "")
        nameLabel.text = product.name
        costButton.setTitle("\(String(product.price)) Р", for: .normal)
        
        costButton.layer.cornerRadius = costButton.frame.height / 2
        costButton.clipsToBounds = true
    }
}
