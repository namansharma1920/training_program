//
//  FirstTableViewCell.swift
//  CreatingMultipleCell
//
//  Created by Naman Sharma on 06/03/23.
//

import UIKit

struct TextFieldModel {
    var firstTextFieldData: String?
    var secondTextFieldData: String?
    var thirdTextFieldData: String?
    
    init(textData1: String, textData2: String, textData3: String) {
        firstTextFieldData  = textData1
        secondTextFieldData = textData2
        thirdTextFieldData = textData3

    }
}

//table cell of type collection cell
class FirstTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UITextFieldDelegate, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    
      static var identifier: String {
        return String(describing: self)  //here self has a value of string
      }
      static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
      }
    
    var array = [TextFieldModel]()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print(firstCollectionView.frame.size.width)
        for _ in 1 ... 20 {
            array.append(TextFieldModel(textData1: "", textData2: "", textData3: ""))
        }
        
        firstCollectionView.register(FirstCollectionViewCell.nib, forCellWithReuseIdentifier: FirstCollectionViewCell.identifier)
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        firstCollectionView.reloadData()
        
    }
    //this will set colletion cell height and width
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let size = CGSize(width: firstCollectionView.frame.size.width / 4 , height: firstCollectionView.frame.size.height / 5)
        return size
    }

    //here i a having no sections so below is not useful
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 1.0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCollectionViewCell.identifier , for: indexPath) as? FirstCollectionViewCell {
            
            cell.firstTextField.tag = indexPath.row
            cell.secondTextField.tag = indexPath.row
            cell.thirdTextField.tag = indexPath.row
            
            cell.firstTextField.delegate = self
            cell.secondTextField.delegate = self
            cell.thirdTextField.delegate = self
            
            cell.firstTextField.text = array[indexPath.row].firstTextFieldData
            cell.secondTextField.text = array[indexPath.row].secondTextFieldData
            cell.thirdTextField.text = array[indexPath.row].thirdTextFieldData
            
            return cell
        }
        return FirstCollectionViewCell()  //returning empty cell
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {

        let index = NSIndexPath(row: textField.tag, section: 0)

        if let cell = firstCollectionView.cellForItem(at: index as IndexPath) as? FirstCollectionViewCell {
            
            if(textField == cell.firstTextField) {
                array[textField.tag].firstTextFieldData = textField.text
            }
            else if(textField == cell.secondTextField) {
                array[textField.tag].secondTextFieldData = textField.text
            }
            else if(textField == cell.thirdTextField){
                array[textField.tag].thirdTextFieldData = textField.text
            }
        }
    }

    
        
    
}
