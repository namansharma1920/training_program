//
//  ViewController.swift
//  AlamofirePractice
//
//  Created by Naman Sharma on 14/03/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let destination: DownloadRequest.Destination = { _, _ in
                    let documentsURL = FileManager.default.urls(for: .picturesDirectory, in: .userDomainMask)[0]
                        let fileURL = documentsURL.appendingPathComponent("image.png")
                        return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
                }
                AF.download("https://httpbin.org/image/png", to: destination).response { response in
                    debugPrint(response)
                    if response.error == nil, let imagePath = response.fileURL?.path {
                        let image = UIImage(contentsOfFile: imagePath)
                        self.imageView.image = image
                    }
                }
        
    }
    
   


}

