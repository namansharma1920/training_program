//
//  ViewController.swift
//  Localizable
//
//  Created by Naman Sharma on 16/03/23.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet var picker: UIPickerView!
    
    let data = ["English", "Hindi"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        let valueSelected = String(data[row])
        
        if valueSelected == "Hindi" {
            targetLabel.text = valueSelected.localized("hi")
        }
        else {
            targetLabel.text = valueSelected.localized("en")
        }
        
        
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        //greetString.text = NSLocalizedString("greet", comment: "Localizable")
        
    }
    
}

extension String {
 func localized(_ lang:String) ->String {

    let path = Bundle.main.path(forResource: lang, ofType: "lproj")
    let bundle = Bundle(path: path!)
    //key is greet        bundle is what we created    value is self(String)
     return NSLocalizedString("greet", tableName: nil, bundle: bundle!, value: self, comment: self)
    
 }
 
}

