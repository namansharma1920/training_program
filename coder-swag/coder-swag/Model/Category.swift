//
//  Category.swift
//  coder-swag
//
//  Created by Naman Sharma on 23/02/23.
//

import Foundation

struct Category {
    
    private(set) public var title: String   //here private(set), means i am setting it private  for updation and public for fetch 
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
