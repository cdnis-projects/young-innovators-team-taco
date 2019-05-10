//
//  AuthenticationViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 10/5/2019.
//  Copyright © 2019 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AuthenticationViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBAction func buttonSignIn(_ sender: Any) {
        if textFieldEmail.text == "" || textFieldPassword.text == "" {
            let alertFields = UIAlertController(title: "Please Enter All Fields", message: "You need to enter both your email and your password.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertFields.addAction(actionOK)
        } else {
            Auth.auth().signIn(withEmail: textFieldEmail.text!, password: textFieldPassword.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
