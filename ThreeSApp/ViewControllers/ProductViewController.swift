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
    
    var product: CurrentProduct!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: product.name ?? "")
        documentationButton.layer.cornerRadius = documentationButton.frame.height / 2
        descriptionOfProductLabel.text = """
            \(product.definition ?? "")
            
                Цена: \(product.price ?? "")
            """
        documentationButton.setTitle("Техническая документация", for: .normal)
    }
    
    @IBAction private func swipeButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction private func documentationButtonPressed() {
        if product.documentation == "" {
            showAlert(with: "Ошибка", and: "Для данного продукта нет технической документации")
        } else {
            if let url = URL(string: product.documentation ?? "") {
                UIApplication.shared.open(url)
            }
        }
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

