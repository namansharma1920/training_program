//
//  ViewController.swift
//  PickerView
//
//  Created by Naman Sharma on 13/03/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var picker: UIPickerView!  //i am attaching it with strory board picker view so definately it will be there
    
    let data = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //it specify the number of columns that we have in a picker view
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]  //at each row what will be the title is return by this function
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
    }


}

