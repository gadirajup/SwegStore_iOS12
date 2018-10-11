//
//  DataService.swift
//  Swag
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import Foundation

struct DataService {
    static var instance = DataService()
    
    private var categories = [
        Category(label: "SHIRTS", image: "shirts.png"),
        Category(label: "HOODIES", image: "hoodies.png"),
        Category(label: "HATS", image: "hats.png")
        //Category(label: "DIGITAL", image: "digital.png")
    ]
    
    private let shirts = [
        Product(title: "Tshirt - 1", price: "12", imageName: "shirt01.png"),
        Product(title: "Tshirt - 2", price: "13", imageName: "shirt02.png"),
        Product(title: "Tshirt - 3", price: "14", imageName: "shirt03.png"),
        Product(title: "Tshirt - 4", price: "15", imageName: "shirt04.png"),
        Product(title: "Tshirt - 5", price: "16", imageName: "shirt05.png")
    ]
    
    private let hats = [
        Product(title: "Hat - 1", price: "12", imageName: "hat01.png"),
        Product(title: "Hat - 2", price: "13", imageName: "hat02.png"),
        Product(title: "Hat - 3", price: "14", imageName: "hat03.png"),
        Product(title: "Hat - 4", price: "15", imageName: "hat04.png"),
        Product(title: "Hat - 5", price: "16", imageName: "hat05.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie - 1", price: "12", imageName: "hoodie01.png"),
        Product(title: "Hoodie - 2", price: "13", imageName: "hoodie02.png"),
        Product(title: "Hoodie - 3", price: "14", imageName: "hoodie03.png"),
        Product(title: "Hoodie - 4", price: "15", imageName: "hoodie04.png"),
        Product(title: "Hoodie - 5", price: "16", imageName: "hoodie05.png")
    ]
    
    func getProduct(category: Category) -> [Product] {
        switch category.label {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    mutating func addCategory() {
        let newCategory = Category(label: "DIGITAL", image: "digital.png")
        categories.append(newCategory)
    }
}
