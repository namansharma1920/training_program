//
//  SecondVC.swift
//  shiftFromFirstVCToSecondVC
//
//  Created by Naman Sharma on 13/03/23.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //before doing anything with this button i first type the two values
    //1. Storyboard ID = SecondVC
    //2. Restoration ID = SecondVC
    @IBAction func mySecondBtnAction(_ sender: Any) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let first = main.instantiateViewController(withIdentifier: "FirstVC")
        self.present(first, animated : true, completion: nil)
    }
    
   

}
