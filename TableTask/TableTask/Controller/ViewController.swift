//
//  ViewController.swift
//  TableTask
//
//  Created by Naman Sharma on 27/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
        
    @IBOutlet weak var personalInfoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personalInfoTable.dataSource = self
        personalInfoTable.delegate = self
        personalInfoTable.reloadData()
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



protocol p1{
    func ttest()
}

class A{
    var b = B()
    var p: p1?
    init(){
        p?.ttest()
    }
}

class B: p1{
    func ttest() {
        print("teest")
    }
    
    weak var A = A()
}

as, as? as!

var tes = 2 as Double
