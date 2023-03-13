//
//  ViewController.swift
//  shiftFromFirstVCToSecondVC
//
//  Created by Naman Sharma on 13/03/23.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    //before doing anyhting with this button i first type the two values
    //1. Storyboard ID = FirstVC
    //2. Restoration ID = FirstVC
    @IBAction func myFirstBtnAction(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)  //creating a UI storyboard
        let second = main.instantiateViewController(withIdentifier: "SecondVC") //initaiate second vc
        self.present(second, animated : true, completion: nil)  //then presenting this second VC
        
    }
}

