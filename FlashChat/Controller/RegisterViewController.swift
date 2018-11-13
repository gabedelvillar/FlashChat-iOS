//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Gabriel Del VIllar on 10/28/18.
//  Copyright © 2018 gdelvillar. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  @IBAction func registeredBtnPressed(_ sender: Any) {
    
    SVProgressHUD.show()
    
    Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
      if error != nil{
        print(error!)
      } else {
        // success
        print("Registreation Successful!")
        SVProgressHUD.dismiss()
        
        self.performSegue(withIdentifier: "goToChat", sender: self)
      }
    }
    
  }
  

}
