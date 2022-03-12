//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ömer Birer on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myViewImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isBitcoin = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myViewImage.isUserInteractionEnabled = true
        
        let gestoreRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        myViewImage.addGestureRecognizer(gestoreRecognizer)
        
    }
    
    @objc func changePic(){
        
        if isBitcoin == true {
            myViewImage.image = UIImage(named: "ethereum")
            myLabel.text = "Ethereum"
            isBitcoin = false
        }
        else{
            myViewImage.image = UIImage(named: "bitcoin")
            myLabel.text = "Bitcoin"
            isBitcoin = true
        }
    }
        
    

}

