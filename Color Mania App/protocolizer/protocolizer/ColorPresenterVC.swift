//
//  ColorPresenterVC.swift
//  protocolizer
//
//  Created by Caleb Stultz on 8/14/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTranferDelegate {

    @IBOutlet weak var colorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("START START")
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        
        self.view.backgroundColor = color
        colorLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPicker" {
            let colorPickerVC = segue.destination as! ColorPickerVC  //destination of seque kya hoga
            colorPickerVC.delegate = self  //that means we override that function here
        }
        
        
    }

}

