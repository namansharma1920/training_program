//
//  ViewController.swift
//  TaskRegardingTableView
//
//  Created by Naman Sharma on 27/02/23.
//

import UIKit

class PersonalInfoController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var personalInfoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personalInfoTable.dataSource = self
        personalInfoTable.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return  Data.instance.getPersonalInfo().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PersonalCell") as? PersonalCell {
            let personalInfo = Data.instance.getPersonalInfo()[indexPath.row]
            cell.updateViews(personalInfo: personalInfo)
            return cell
        } else {
            return PersonalCell()  //returning an empty cell
        }
    }


}

