//
//  Product.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 21.04.2023.
//

struct Product {
    let name: String
    let brand: Brand
    let group: Group
    let price: String
    let definition: String
    let documentation: String
    
    var fullName: String {
        "\(brand.rawValue) \(name)"
    }
 
    static func getProducts() -> [[CurrentProduct]] {
        var allProducts: [CurrentProduct] = []
        var groups: [String] = []
        
        StorageManager.shared.fetchData { result in
            switch result {
            case .success(let products):
                allProducts = products
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        for product in allProducts {
            if !groups.contains(product.group ?? "") {
                groups.append(product.group ?? "")
            }
        }
        
        var resultProducts: [[CurrentProduct]] = Array(repeating: [], count: groups.count)
        
        for product in allProducts {
            if groups.contains(product.group ?? "") {
                let index = groups.firstIndex {$0 == product.group} ?? 0
                resultProducts[index].append(product)
            }
        }
        print(resultProducts.last ?? [CurrentProduct].self)
        
        return resultProducts
    }
    
}

enum Brand: String {
    case sikkens = "Sikkens"
    case lesonal = "Lesonal"
    case wanda = "Wanda"
    case akzoNobel = "AkzoNobel"
    case sartorius = "Sartorius"
    case santint = "Santint"
}

enum Group: String {
    case varnish = "Лаки"
    case primer = "Грунты"
    case thinner = "Разбавители"
    case hardener = "Отвердители"
    case putty = "Шпатлевки"
    case additive = "Добавки"
    case degreaser = "Обезжириватели"
    case equipment = "Оборудование"
    case colorvation = "Сolorvation"
    
    static func getAllGroups() -> [String] {
        [
            varnish.rawValue,
            primer.rawValue,
            thinner.rawValue,
            hardener.rawValue,
            putty.rawValue,
            additive.rawValue,
            degreaser.rawValue,
            equipment.rawValue,
            colorvation.rawValue
        ]
    }
}
