//
//  ViewController.swift
//  AlertProject
//
//  Created by Ömer Birer on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        /*let alert = UIAlertController(title: "Error!", message: "Username Not Found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //button clicked
            print("Button Clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)*/
        
        if userNameTextField.text == "" {
            
            let usernameAlert = UIAlertController(title: "Hata!", message: "Lütfen Kullanıcı Adınızı Giriniz.", preferredStyle: UIAlertController.Style.alert)
            let usernameOkButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            
            usernameAlert.addAction(usernameOkButton)
            self.present(usernameAlert, animated: true, completion: nil)
            
        }
        
        else if passwordTextField.text == "" {
            let passwordAlert = UIAlertController(title: "Hata!", message: "Lütfen Şifrenizi Giriniz.", preferredStyle: UIAlertController.Style.alert)
            self.present(passwordAlert, animated: true, completion: nil)
            
            let passwordAlertOkButton = UIAlertAction(title: "Tanma", style: UIAlertAction.Style.default, handler: nil)
            passwordAlert.addAction(passwordAlertOkButton)
        }
        
        else if passwordAgainTextField.text == "" {
            let passwordAgainAlert = UIAlertController(title: "Hata!", message: "Lütfen Şifrenizi Tekrar Giriniz.", preferredStyle: UIAlertController.Style.alert)
            self.present(passwordAgainAlert, animated: true, completion: nil)
            
            let passwordAgainAlertOkButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            passwordAgainAlert.addAction(passwordAgainAlertOkButton)
        }
        
        else if passwordTextField.text != passwordAgainTextField.text {
            let ayniDegil = UIAlertController(title: "Hata!", message: "Girdiğiniz Şifreler Birbiriyle Uyuşmamaktadır.", preferredStyle: UIAlertController.Style.alert)
            self.present(ayniDegil, animated: true, completion: nil)
            
            let ayniDegilOkButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
            ayniDegil.addAction(ayniDegilOkButton)
        }
        
    }
    
}

