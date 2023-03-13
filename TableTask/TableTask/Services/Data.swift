//
//  Data.swift
//  TaskRegardingTableView
//
//  Created by Naman Sharma on 27/02/23.
//

import Foundation

class Data {
    
    static let instance = Data()
    
    private let personalInfoAll=[
        PersonalInfo(name: "naman", Class: 12, rollNumber: 1),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 2),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 3),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 4),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 5),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 6),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 7),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 8),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 9),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 10),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 11),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 12),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 13),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 14),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 15),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 16),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 17),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 18),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 19),
        PersonalInfo(name: "naman", Class: 12, rollNumber: 20)
    ]
    
    func getPersonalInfo()  -> [PersonalInfo]{
        return personalInfoAll
    }
    
}

