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
        guard let email = textFieldEmail.text else {
            fatalError("Cannot find user email.")
        }
        guard let password = textFieldPassword.text else {
            fatalError("Cannot find user password.")
        }
        if email == "" || password == "" {
            let alertFields = UIAlertController(title: "Please Enter All Fields", message: "You need to enter both your email and your password.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertFields.addAction(actionOK)
            self.present(alertFields, animated: true)
        } else {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    print("Failed to sign in user. Error: ", error.localizedDescription)
                    let alert = UIAlertController(title: "There was a problem", message: "Error: " + error.localizedDescription, preferredStyle: .alert)
                    let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(actionOK)
                    self.present(alert, animated: true)
                    return
                }
                print("Successfully logged in.")
                self.performSegue(withIdentifier: "LoginToProfile", sender: self)
            }
//            let segueTo = InterestsViewController()
//            self.present(segueTo, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
