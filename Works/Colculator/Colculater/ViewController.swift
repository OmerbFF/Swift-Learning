//
//  ViewController.swift
//  Colculater
//
//  Created by Ömer Birer on 6.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firsText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toplamaButonu(_ sender: Any) {
        
        if let firstNumber = Int(firsText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let result = firstNumber + secondNumber
                resultLabel.text = String(result)

            }
        }
        
    
    }
    
    
    @IBAction func cikarmaButonu(_ sender: Any) {
        
        if let firstNumber = Int(firsText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)

            }
        }
        
    }
    
    
    @IBAction func carpmaButonu(_ sender: Any) {
        
        if let firstNumber = Int(firsText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)

            }
        }
        
    }
    
    
    @IBAction func bolmeButonu(_ sender: Any) {
        
        if let firstNumber = Int(firsText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)

            }
        }
        
    }
}

