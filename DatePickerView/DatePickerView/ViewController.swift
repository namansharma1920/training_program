//
//  ViewController.swift
//  DatePickerView
//
//  Created by Naman Sharma on 13/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayField: UITextField!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    
    func createToolbar() -> UIToolbar { //so it is used to add done at date picker
        
        let toolbar =  UIToolbar()
        toolbar.sizeToFit()  // so that "Done" white line can take a complete width of device
    
        //done button
        let doneBtn =  UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        
        return toolbar
    }
    
    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels  //it will take a complete height like wheels
        datePicker.datePickerMode = .date  //only date will show
        
        birthdayField.inputView = datePicker  //taking input from datePicker only
        birthdayField.inputAccessoryView = createToolbar() //when we click on text field this will open
    }
    
    @objc func donePressed() {
        
        //all of them is used ki text field main date is showing like in which manner
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none  //dont show time
        self.birthdayField.textColor = .black
        self.birthdayField.textAlignment = .center
        self.birthdayField.text = dateFormatter.string(from: datePicker.date)
        
        self.view.endEditing(true)  //editing will end and keyboard will go
    }


}

