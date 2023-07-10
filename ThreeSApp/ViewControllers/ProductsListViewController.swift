//
//  ProductsListViewController.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 01.06.2023.
//

import UIKit

final class ProductsListViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private var searchBar: UISearchBar!
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var buttonsStackView: UIStackView!
    @IBOutlet private var buttonsScrollView: UIScrollView!
    
    // MARK: - Private Properties
    private let storageManager = StorageManager.shared
    private let dataManager = DataManager.shared
    private let productsList = Product.getProducts()
    private let productGroups = Group.getAllGroups()
    private let selectedButtonBackgroundColor = UIColor(
        red: 71 / 255,
        green: 61 / 255,
        blue: 206 / 255,
        alpha: 1
    )
    private let simpleButtonBackgroundColor = UIColor(
        red: 244/255,
        green: 244/255,
        blue: 244/255,
        alpha: 1
    )
    
    private var filteredData: [[CurrentProduct]] = []
    private var cartProducts: [CartProduct]!
    private var isContentScrolled = false
    private var isButtonTapped = false
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
        filteredData = productsList
        overrideUserInterfaceStyle = .light
        tableView.rowHeight = 130
        
        addButtonsToStackView()
        configureButtonsInStackView()
        //        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        let materialVC = navigationVC.topViewController as? ProductViewController
        
        materialVC?.product = filteredData[indexPath.section][indexPath.row]
    }
    
    // MARK: - Touches Began
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func addToCartButtonPressed(_ sender: UIButton) {
        let buttonPosition = sender.convert(CGPoint.zero, to: tableView)
        
        if let indexPath = tableView.indexPathForRow(at: buttonPosition) {
            let section = indexPath.section
            let rowIndex = indexPath.row
            
            let currentProduct = filteredData[section][rowIndex]
            
            for product in cartProducts {
                if product.name == currentProduct.name {
                    storageManager.update(product, currentProduct: currentProduct)
                    showAlert(with: "Корзина", and: "Товар добавлен в корзину")
                    return
                }
            }
            
            storageManager.createCartProduct(
                name: currentProduct.name ?? "",
                brand: currentProduct.brand ?? "",
                group: currentProduct.group ?? "",
                price: currentProduct.price,
                definition: currentProduct.definition ?? "",
                documentation: currentProduct.documentation ?? "",
                count: 1
            )
            fetchData()
            showAlert(with: "Корзина", and: "Товар добавлен в корзину")
        }
    }
    
    // MARK: - Private functions
    @objc private func buttonTapped(_ sender: UIButton) {
        guard let subviews = buttonsStackView.arrangedSubviews as? [UIButton] else { return }
        guard !isButtonTapped else { return }
        
        isButtonTapped = true
        
        for subview in subviews {
            if subview.backgroundColor == selectedButtonBackgroundColor {
                subview.backgroundColor = simpleButtonBackgroundColor
                subview.setTitleColor(.gray, for: .normal)
            }
        }
        
        sender.backgroundColor = selectedButtonBackgroundColor
        sender.setTitleColor(.white, for: .normal)
        
        for index in filteredData.indices {
            let currentGroup = filteredData[index].first?.group
            
            if sender.currentTitle == currentGroup {
                let indexPath = IndexPath(row: 0, section: index)
                
                if buttonsStackView.arrangedSubviews.count > 1 {
                    tableView.scrollToRow(at: indexPath, at: .top, animated: true)
                    isContentScrolled = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
                        self?.scrollContent(with: index, and: subviews)
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
                        self?.isContentScrolled = false
                        self?.isButtonTapped = false
                    }
                    
                    break
                }
            }
        }
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
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
    
    private func getButtons() -> [UIButton] {
        var buttons: [UIButton] = []
        
        for group in filteredData {
            let button = UIButton(type: .custom)
            
            button.translatesAutoresizingMaskIntoConstraints = false
            button.widthAnchor.constraint(equalToConstant: 159).isActive = true
            button.heightAnchor.constraint(equalToConstant: 35).isActive = true
            
            button.setTitle(group.first?.group, for: .normal)
            
            button.backgroundColor = simpleButtonBackgroundColor
            button.setTitleColor(.darkGray, for: .normal)
            button.setTitle(group.first?.group, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            
            button.contentHorizontalAlignment = .center
            
            button.addTarget(
                self,
                action: #selector(buttonTapped(_:)),
                for: .touchUpInside
            )
            
            buttons.append(button)
        }
        
        return buttons
    }
    
    private func addButtonsToStackView() {
        let buttons = getButtons()
        
        buttonsStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        for button in buttons {
            buttonsStackView.addArrangedSubview(button)
        }
    }
    
    private func configureButtonsInStackView() {
        buttonsStackView.layoutIfNeeded()
        
        if let subviews = buttonsStackView.arrangedSubviews as? [UIButton] {
            for subview in subviews {
                subview.layer.cornerRadius = subview.frame.height / 2
            }
            
            subviews[0].backgroundColor = selectedButtonBackgroundColor
            subviews[0].setTitleColor(.white, for: .normal)
        }
    }
    
    private func scrollContent(with section: Int, and subviews: [UIButton]) {
        guard buttonsStackView.arrangedSubviews.count > 2 else { return }
        
        let subviewWidth = subviews[section].bounds.width
        let buttonsScrollViewWidth = buttonsScrollView.bounds.width
        let spacing = buttonsStackView.spacing
        var leftConstraintWidth = 0.0
        var xPos: CGFloat = 0.0
        
        if let leftConstraint = view
            .constraints
            .first(where: { $0.firstAttribute == .left || $0.firstAttribute == .leading }) {
            leftConstraintWidth = leftConstraint.constant
        }

        switch section {
        case 0:
            xPos = 0
        case filteredData.count - 1:
            let totalContentWidth = CGFloat(filteredData.count) * (subviewWidth + spacing) + leftConstraintWidth * 2
            let buttonsScrollViewContentWidth = totalContentWidth + buttonsScrollView.contentInset.left + buttonsScrollView.contentInset.right
            xPos = max(0, buttonsScrollViewContentWidth - buttonsScrollViewWidth - spacing)
        default:
            xPos = CGFloat(section) * (subviewWidth + spacing) + (subviewWidth + leftConstraintWidth * 2) / 2 - buttonsScrollViewWidth / 2
        }
        
        let yPos: CGFloat = 0
        let contentOffset = CGPoint(x: xPos, y: yPos)

        if buttonsScrollView.contentOffset != contentOffset && buttonsStackView.arrangedSubviews.count > 1 {
            buttonsScrollView.setContentOffset(
                contentOffset,
                animated: true
            )
        }
    }
}

// MARK: - UITableViewDataSource
extension ProductsListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        filteredData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredData[section].count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        filteredData[section].first?.group
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        25
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "product", for: indexPath)
        guard let cell = cell as? ProductTableViewCell else { return UITableViewCell() }
        
        cell.selectionStyle = .none
        let material = filteredData[indexPath.section]
        cell.configure(with: material[indexPath.row])
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ProductsListViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let visibleRows = tableView.indexPathsForVisibleRows,
              let firstVisibleIndexPath = visibleRows.first,
              let subviews = buttonsStackView.arrangedSubviews as? [UIButton] else { return }
        
        let section = firstVisibleIndexPath.section
        guard subviews[section].currentTitleColor != .white else { return }
        
        
        if !isContentScrolled {
            for subview in subviews {
                if subview.currentTitleColor != .darkGray {
                    subview.backgroundColor = simpleButtonBackgroundColor
                    subview.setTitleColor(.darkGray, for: .normal)
                }
            }
            
            subviews[section].backgroundColor = selectedButtonBackgroundColor
            subviews[section].setTitleColor(.white, for: .normal)
            scrollContent(with: section, and: subviews)
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchBar.resignFirstResponder()
    }
}

// MARK: - UISearchBarDelegate
extension ProductsListViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var filteredGroup: [CurrentProduct] = []
        filteredData = []
        
        if searchText == "" {
            filteredData = productsList
            buttonsScrollView.isHidden = false
        } else {
            for group in productsList {
                for product in group {
                    if product.name?.lowercased().contains(searchText.lowercased()) ?? false {
                        filteredGroup.append(product)
                    }
                }
                if !filteredGroup.isEmpty {
                    filteredData.append(filteredGroup)
                }
                filteredGroup = []
            }
        }
        
        if !filteredData.isEmpty {
            buttonsScrollView.isHidden = false
            addButtonsToStackView()
            configureButtonsInStackView()
            
            let tableViewContentOffset = CGPoint(x: 0, y: 0)
            let scrollViewContentOffset = CGPoint(x: 0, y: 0)
            tableView.setContentOffset(tableViewContentOffset, animated: false)
            buttonsScrollView.setContentOffset(scrollViewContentOffset, animated: false)
            tableView.reloadData()
        } else {
            let contentOffset = CGPoint(x: 0, y: 0)
            buttonsScrollView.setContentOffset(contentOffset, animated: false)
            buttonsScrollView.isHidden = true
            tableView.reloadData()
        }
    }
}
