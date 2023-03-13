//
//  ProductVCViewController.swift
//  coder-swag
//
//  Created by Naman Sharma on 24/02/23.
//

import UIKit

class ProductVCViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count    //returning number of collection of each category.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()  //returning empty cell
    }
    


}
