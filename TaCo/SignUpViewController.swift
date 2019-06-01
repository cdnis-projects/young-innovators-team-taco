//
//  SignUpViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 10/5/2019.
//  Copyright © 2019 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func buttonSignUp(_ sender: Any) {
        guard let name = textFieldName.text else {
            fatalError("Cannot find user's name.")
        }
        guard let email = textFieldEmail.text else {
            fatalError("Cannot find user email.")
        }
        guard let password = textFieldPassword.text else {
            fatalError("Cannot find user password.")
        }
        if name == "" || email == "" || password == "" {
            let alertFields = UIAlertController(title: "Please Enter All Fields", message: "You need to enter both your email and your password.", preferredStyle: .alert)
            let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertFields.addAction(actionOK)
            self.present(alertFields, animated: true)
        } else {
            Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
                if let error = error {
                    print("Failed to sign up user with error: ", error.localizedDescription)
                    let alert = UIAlertController(title: "There was a problem", message: "Error: " + error.localizedDescription, preferredStyle: .alert)
                    let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(actionOK)
                    self.present(alert, animated: true)
                    return
                }
                guard let uid = result?.user.uid else { return }
                let values = ["email": email, "displayName": name]
                Database.database().reference().child("users").child(uid).updateChildValues(values, withCompletionBlock: { (error, ref) in
                    if let error = error {
                        print("Failed to update database with error: ", error.localizedDescription)
                        return
                    }
                })
                print("Created new user!")
                self.performSegue(withIdentifier: "SignUpToHome", sender: self)
            }
            
//            let segueViewController = InterestsViewController()
//            self.present(segueViewController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
