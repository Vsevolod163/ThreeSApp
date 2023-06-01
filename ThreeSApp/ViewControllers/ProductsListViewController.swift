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
    
    private var filteredData: [[Product]] = []
    private var isContentScrolled = false
    private var isButtonTapped = false

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredData = productsList
        
        overrideUserInterfaceStyle = .light
        tableView.delegate = self
        tableView.rowHeight = 130
        
        addButtonsToStackView()
        configureButtonsInStackView()
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
            let currentGroup = filteredData[index].first?.group.rawValue

            if sender.currentTitle == currentGroup {
                let indexPath = IndexPath(row: 0, section: index)
                
                
                if buttonsStackView.arrangedSubviews.count > 1 {
                    tableView.scrollToRow(at: indexPath, at: .top, animated: true)
                    isContentScrolled = true
                    scrollContent(with: index, and: subviews)
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
                        self?.isContentScrolled = false
                        self?.isButtonTapped = false
                    }
                    
                    
                    break
                }
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
            
            button.setTitle(group.first?.group.rawValue, for: .normal)
            
            button.backgroundColor = simpleButtonBackgroundColor
            button.setTitleColor(.darkGray, for: .normal)
            button.setTitle(group.first?.group.rawValue, for: .normal)
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
        filteredData[section].first?.group.rawValue
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "product", for: indexPath)
        cell.selectionStyle = .none
        let material = filteredData[indexPath.section]
        var content = cell.defaultContentConfiguration()
        content.text = material[indexPath.row].fullName
        content.secondaryText = material[indexPath.row].price
        content.image = UIImage(named: material[indexPath.row].fullName)
        
        cell.contentConfiguration = content
        
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
        var filteredGroup: [Product] = []
        filteredData = []
        
        if searchText == "" {
            filteredData = productsList
            buttonsScrollView.isHidden = false
        } else {
            for group in productsList {
                for product in group {
                    if product.fullName.lowercased().contains(searchText.lowercased()) {
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