//
//  ProfileViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 2/11/2018.
//  Copyright © 2018 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelStarRating: UILabel!
    @IBOutlet weak var labelContactDetails: UILabel!
    @IBOutlet weak var labelFreeTimes: UILabel!
    @IBOutlet weak var labelSpecialties: UILabel!
    @IBOutlet weak var labelQualifications: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBAction func buttonBooking(_ sender: Any) {
    }
    var provider: ProviderListingViewController?
//    var profileImage = provider.profileImage
//    var firstName = provider.firstName
    
    /*
    var provider = [Provider.Person]()
    
    private func changeLabel() {
        
        var userProfileImage = UIImage(named: "profileImage")
        
        var userInfo = Provider.Person(profileImage: userProfileImage, firstName: String, lastName: String, interests: [String]); else do {
            fatalError("Unable to instantiate user")
        }
        
        imageProfile.image = userProfileImage
        labelName.text = String(userInfo.firstName + userInfo.lastName)
        labelContactDetails.text = String("+852 1234 5678")
     
        
    }
   */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
