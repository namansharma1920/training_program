//
//  PersonalInfo.swift
//  TableTask
//
//  Created by Naman Sharma on 27/02/23.
//

import Foundation

struct PersonalInfo {
    
    private(set) public var name: String
    private(set) public var Class: Int
    private(set) public var rollNumber: Int
    
    init(name: String, Class: Int, rollNumber: Int){
        
        self.name=name
        self.Class=Class
        self.rollNumber=rollNumber
    }
}
