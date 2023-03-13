//
//  ViewController.swift
//  CreatingMultipleCell
//
//  Created by Naman Sharma on 06/03/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //here i am registering two cells
        tableView.register(FirstTableViewCell.nib, forCellReuseIdentifier: FirstTableViewCell.identifier)
        tableView.register(SecondTableViewCell.nib, forCellReuseIdentifier: SecondTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2;
    }
    
    //adding heigth and width of each table cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            var height:CGFloat = CGFloat()
            if indexPath.row == 0 {
                height = self.view.frame.size.height 
            }
            else if indexPath.row == 1 {
                height = self.view.frame.size.height / 3
            }
            return height
        }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.row == 0 {
             cell = tableView.dequeueReusableCell(withIdentifier: FirstTableViewCell.identifier, for: indexPath)
        }
        else {
             cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath)
        }
        return cell
    }
    


}

