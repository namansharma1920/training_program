//
//  ColorPickerVC.swift
//  protocolizer
//
//  Created by Caleb Stultz on 8/14/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTranferDelegate? //creating optional of value nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonWasPressed(sender: UIButton) {  //sender is UIButton
        if delegate != nil {
            delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)//here i am saying that wrap background colour, title is this.
            self.navigationController?.popViewController(animated: true) // take us to previous view controller. self is denoting a current VC
        }
    }
    
}


