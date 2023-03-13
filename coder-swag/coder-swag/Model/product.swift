//
//  product.swift
//  coder-swag
//
//  Created by Naman Sharma on 24/02/23.
//

import Foundation

class Product {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
