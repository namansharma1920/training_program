//
//  ViewController.swift
//  coder-swag
//
//  Created by Naman Sharma on 23/02/23.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        categoryTable.delegate = self    //in the place of self we can add the address of incoming file source just like bootstrap
        
    }
    
    //these are 2 protocols functions which need to be extend
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count  //it is returning what is the number of rows in array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //after as whatever is written is a explicit type casting
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCellTableViewCell") as? CategoryCellTableViewCell {
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row] //it will give you which rows cell
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCellTableViewCell()  //returning an empty cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {  //since humne upar category hi sender choose kiya so any is category
        if let productsVC = segue.destination as? ProductVCViewController {
            
            
            //i did not perform back button in productVC because it is attached with previous VC
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)  //used for debugging
            productsVC.initProducts(category: sender as! Category)  //we are forcefully taking its value because we know value is present
        }
    }

}


//class CategoriesVC: UIViewController {
//
//    @IBOutlet weak var categoryTable: UITableView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //categoryTable.register(MyDummyNewTableViewCell.nib, forCellReuseIdentifier: MyDummyNewTableViewCell.identifier)
//
//    }
//
//
//}
//extension CategoriesVC: UITableViewDelegate , UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 20
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyDummyNewTableViewCell.identifier) as? MyDummyNewTableViewCell else {
//            return UITableViewCell()
//        }
//        cell.backgroundColor = .red
//        return cell
//    }
//}


