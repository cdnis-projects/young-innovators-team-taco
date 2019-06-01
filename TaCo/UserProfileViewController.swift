//
//  UserProfileViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 27/5/2019.
//  Copyright © 2019 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase

class UserProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelName.text = "Name: \(Auth.auth().currentUser?.displayName ?? "TaCo")"
        labelEmail.text = "Email: \(Auth.auth().currentUser?.email ?? "talentconnected@taco.com")"
    }
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
