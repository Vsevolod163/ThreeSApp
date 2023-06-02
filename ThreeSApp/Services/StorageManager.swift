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
    
    func create(name: String, brand: String, group: String, price: String, definition: String, documentation: String) {
        let product = CurrentProduct(context: viewContext)
        
        product.name = name
        product.brand = brand
        product.group = group
        product.price = price
        product.definition = definition
        product.documentation = documentation
        
        saveContext()
    }
    
    func update(_ product: CurrentProduct, name: String, brand: String, group: String, price: String, definition: String, documentation: String) {
        product.name = name
        product.brand = brand
        product.group = group
        product.price = price
        product.definition = definition
        product.documentation = documentation
        
        saveContext()
    }
    
    func delete(_ product: CurrentProduct) {
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
