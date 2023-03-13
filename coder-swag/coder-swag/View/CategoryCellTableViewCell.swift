//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by Naman Sharma on 23/02/23.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)  //creating an image from this name
        categoryTitle.text = category.title
    }

}
