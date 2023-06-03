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
    @IBOutlet private var cartButton: UIButton!
    
    var product: CurrentProduct!
    private let storageManager = StorageManager.shared
    private var cartProducts: [CartProduct]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productImageView.image = UIImage(named: product.name ?? "")
        documentationButton.layer.cornerRadius = documentationButton.frame.height / 2
        cartButton.layer.cornerRadius = cartButton.frame.height / 2
        descriptionOfProductLabel.text = """
            \(product.definition ?? "")
            
                Цена: \(product.price) Р
            """
        fetchData()
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
    
    @IBAction func addToCart() {
        for cartProduct in cartProducts {
            if cartProduct.name == product.name {
                storageManager.update(cartProduct, currentProduct: product)
                fetchData()
                showAlert(with: "Корзина", and: "Товар добавлен в корзину")
                return
            }
        }
        storageManager.createCartProduct(
            name: product.name ?? "",
            brand: product.brand ?? "",
            group: product.group ?? "",
            price: product.price,
            definition: product.definition ?? "",
            documentation: product.documentation ?? "",
            count: 1
        )
        fetchData()
        
        showAlert(with: "Корзина", and: "Товар добавлен в корзину")
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
    
    private func fetchData() {
        StorageManager.shared.fetchCartData { result in
            switch result {
            case .success(let products):
                cartProducts = products
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

