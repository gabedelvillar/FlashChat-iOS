//
//  LogInViewController.swift
//  FlashChat
//
//  Created by Gabriel Del VIllar on 10/28/18.
//  Copyright © 2018 gdelvillar. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {
  
  @IBOutlet var emailTextField: UITextField!
  @IBOutlet var passwordTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func LogInBtnPressed(_sender: Any){
    
    SVProgressHUD.show()
    
    Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextfield.text!) {(user, error) in
      
      if( error != nil){
        print(error!)
      } else {
        print("Log in successful!")
        SVProgressHUD.dismiss()
        self.performSegue(withIdentifier: "goToChat", sender: self)
      }
    }
  }
  

}
