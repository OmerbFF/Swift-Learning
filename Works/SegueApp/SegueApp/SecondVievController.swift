//
//  SecondVievController.swift
//  SegueApp
//
//  Created by Ömer Birer on 10.03.2022.
//

import UIKit

class SecondVievController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName
        
    }
   

}
