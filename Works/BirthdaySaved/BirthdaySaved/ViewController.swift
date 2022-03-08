//
//  ViewController.swift
//  BirthdaySaved
//
//  Created by Ömer Birer on 8.03.2022.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isimTF: UITextField!
    @IBOutlet weak var gunTF: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "kullaniciadi")
        let storedBirthday = UserDefaults.standard.object(forKey: "dogumgunu")
        
        //Casting --> as? vs. as! yani ? koyarsak yapabilirsen yanında belirtilen tipte yap, aşağıdaki örnek için yapabiliyorsn string yap. ! koyarsak bu muhakkak string gelecek sen bunu böyle tanı anlamına geliyor
        //Tabii bu olayın daha mantıklı hali bu kod öbeğini if let ile oluşturmaktır.
        
        //if let newName = storedName as? String{
        //nameLabel.text = newName }
        
        //nameLabel.text = Name: \(storedName) as? String
        
        if let newName = storedName as? String{
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(isimTF.text!, forKey: "kullaniciadi")
        UserDefaults.standard.set(gunTF.text!, forKey: "dogumgunu")
        
        nameLabel.text = "Name: \(isimTF.text!)"
        birthdayLabel.text = "Birthday: \(gunTF.text!)"
        
    }
  
    @IBAction func deleteClicked(_ sender: Any) {
    
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    
    
}

