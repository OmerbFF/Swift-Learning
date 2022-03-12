//
//  ViewController.swift
//  SegueApp
//
//  Created by Ömer Birer on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //LifeCycle
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameTextField.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondVievController
            destinationVC.myName = userName
        }
    }
    
}
