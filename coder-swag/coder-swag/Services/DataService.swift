//
//  DataService.swift
//  coder-swag
//
//  Created by Naman Sharma on 23/02/23.
//

import Foundation

class DataService {
    
    static let instance = DataService()  //here i created the singleton class to save memory
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),  //struct
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie",imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback",  imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey",  imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red",  imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey",  imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black",  imageName: "hoodie04.png"),
        
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black",  imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey",  imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red",  imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey",  imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black",  imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()  //empty array having nothing into it
    
    func getCategories() -> [Category] {  //returning an array of category
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }

    
}

