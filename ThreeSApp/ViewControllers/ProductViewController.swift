//
//  ViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 19.04.2023.
//

import UIKit

final class ProductViewController: UIViewController {

    @IBOutlet private var productImageView: UIImageView!
    @IBOutlet private var descriptionOfProductLabel: UILabel!
    @IBOutlet private var documentationButton: UIButton!
    
    var product: Product!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: product.fullName)
        documentationButton.layer.cornerRadius = documentationButton.frame.height / 2
        descriptionOfProductLabel.text = """
            \(product.description)
            
                Цена: \(product.price)
            """
        documentationButton.setTitle("Техническая документация", for: .normal)
    }
    
    @IBAction private func swipeButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction private func documentationButtonPressed() {
        if let url = URL(string: product.documentation) {
           UIApplication.shared.open(url)
       }
    }
}
