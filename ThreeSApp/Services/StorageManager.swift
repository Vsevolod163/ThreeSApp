//
//  StorageManager.swift
//  ThreeSApp
//
//  Created by Vsevolod Lashin on 02.06.2023.
//

import CoreData

final class StorageManager {
    static var shared = StorageManager()
    
    // MARK: - Core Data Stack
    private let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ProductList")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        
        return container
    }()
    
    private let viewContext: NSManagedObjectContext
    private init() {
        viewContext = persistentContainer.viewContext
    }
    
    // MARK: - CRUD
    func fetchData(completion: (Result<[CurrentProduct], Error>) -> Void) {
        let fetchRequest = CurrentProduct.fetchRequest()
        
        do {
            let products = try viewContext.fetch(fetchRequest)
            completion(.success(products))
        } catch let error {
            completion(.failure(error))
        }
    }
    
    func fetchCartData(completion: (Result<[CartProduct], Error>) -> Void) {
        let fetchRequest = CartProduct.fetchRequest()
        
        do {
            let productsInCart = try viewContext.fetch(fetchRequest)
            completion(.success(productsInCart))
        } catch let error {
            completion(.failure(error))
        }
    }
    
    func create(name: String, brand: String, group: String, price: Int64, definition: String, documentation: String) {
        let product = CurrentProduct(context: viewContext)
        
        product.name = name
        product.brand = brand
        product.group = group
        product.price = price
        product.definition = definition
        product.documentation = documentation
        
        saveContext()
    }
    
    func createCartProduct(name: String, brand: String, group: String, price: Int64, definition: String, documentation: String, count: Int64) {
        let product = CartProduct(context: viewContext)
        
        product.name = name
        product.brand = brand
        product.group = group
        product.price = price
        product.definition = definition
        product.documentation = documentation
        product.count = count
        
        saveContext()
    }
    
    func update(_ product: CartProduct, currentProduct: CurrentProduct) {
        product.price = product.price + currentProduct.price
        product.count = product.count + 1
        
        saveContext()
    }
    
    func delete(_ product: CartProduct) {
        viewContext.delete(product)
        
        saveContext()
    }
    
    func deleteFromCart(_ product: CartProduct) {
        viewContext.delete(product)
        
        saveContext()
    }
    
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
