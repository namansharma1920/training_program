//
//  PrductCell.swift
//  coder-swag
//
//  Created by Naman Sharma on 24/02/23.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
    }
}
