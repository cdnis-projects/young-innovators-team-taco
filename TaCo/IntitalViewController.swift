//
//  IntitalViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 10/5/2019.
//  Copyright © 2019 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase

class IntitalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Auto-login user upon view appearing.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let user = Auth.auth().currentUser {
            self.performSegue(withIdentifier: "LaunchToMenu", sender: self)
        }
    }


}
