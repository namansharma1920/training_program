

import UIKit
class GenderWiseProduct {  //creating gender wise product
    
    var gender: String?
    var listOfProduct: [TextFieldModel]?
    
    init(gender: String, listOfProduct: [TextFieldModel]) {
        
        self.gender = gender
        self.listOfProduct = listOfProduct
    }
    
}

struct TextFieldModel {
    var firstTextFieldData: String?
    var secondTextFieldData: String?
    
    init(textData1: String, textData2: String) {
        firstTextFieldData  = textData1
        secondTextFieldData = textData2
    }
}


class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate { //this last delegate is used when we are working with text field in table


    @IBOutlet weak var textFieldTableView: UITableView!
    
    var genderWiseProduct = [GenderWiseProduct]()
    var maleModel = [TextFieldModel]()
    var femaleModel = [TextFieldModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
        
        for _ in 0..<10 {
                    maleModel.append(TextFieldModel(textData1: "", textData2: ""))
        }
        
        for _ in 0..<15 {
                    femaleModel.append(TextFieldModel(textData1: "", textData2: ""))
        }
        
        let male = GenderWiseProduct(gender: "Male", listOfProduct: maleModel)
        let female = GenderWiseProduct(gender: "Female", listOfProduct: femaleModel)
        
        genderWiseProduct.append(male)
        genderWiseProduct.append(female)

        
        textFieldTableView.register(UINib(nibName: "TextFieldTableViewCell", bundle: nil), forCellReuseIdentifier: "TextFieldsTableViewCell")
                
        textFieldTableView.delegate = self
        textFieldTableView.dataSource = self
        textFieldTableView.reloadData()    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {  //it is used to give you number of section present in table view
        return genderWiseProduct.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 40  //it is very much important if you want to change height of header
    }
         
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//           return 40
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
           let view = UIView(frame: CGRect(x: 0, y: 0, width: textFieldTableView.frame.width, height: 40))
           view.backgroundColor =  .yellow
           
        let lbl = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 25))
           lbl.font = UIFont.systemFont(ofSize: 20)
           lbl.text = genderWiseProduct[section].gender //here i am taking section as an index, which is inbuilt variable
          
           view.addSubview(lbl)
           return view
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return genderWiseProduct[section].listOfProduct?.count ?? 0
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TextFieldTableViewCell", for: indexPath) as? TextFieldTableViewCell {
            
            //giving them tag to use further
            cell.firstTextField.tag = indexPath.row  //tag is used to give its label/index to variable of class
            cell.secondTextField.tag = indexPath.row
            
            cell.firstTextField.accessibilityHint = "\(indexPath.section)"
            cell.secondTextField.accessibilityHint = "\(indexPath.section)"
            
            cell.firstTextField.delegate = self  //i am saying first text field delegate defined here
            cell.secondTextField.delegate = self
            
            cell.firstTextField.text = genderWiseProduct[indexPath.section].listOfProduct?[indexPath.row].firstTextFieldData
            cell.secondTextField.text = genderWiseProduct[indexPath.section].listOfProduct?[indexPath.row].secondTextFieldData
            
            return cell;
        }
        return UITableViewCell()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        let index = NSIndexPath(row: textField.tag, section: Int(textField.accessibilityHint ?? "0") ?? 0)
        if let cell = textFieldTableView.cellForRow(at: index as IndexPath) as? TextFieldTableViewCell {
            
            if textField == cell.firstTextField {
                genderWiseProduct[index.section].listOfProduct?[textField.tag].firstTextFieldData = textField.text
            }
            else if textField == cell.secondTextField {
                genderWiseProduct[index.section].listOfProduct?[textField.tag].secondTextFieldData = textField.text
            }
        }
    }
}




