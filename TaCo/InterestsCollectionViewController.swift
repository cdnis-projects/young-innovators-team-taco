//
//  InterestsCollectionViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 10/5/2019.
//  Copyright © 2019 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class InterestsCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var subjects = ["Math", "Science", "Mandarin", "Xcode", "C+", "Poster Design", "Logo Design", "Aerial Photography", "Child Care", "3D Printing", "Web Design"]
    
    // Swift, Drone Flying, VR, 3D Printing, Laser Cutting
    
    
    var subjectImages: [UIImage] = [
        UIImage(named: "Math-Asset")!,
        UIImage(named: "Science-Asset")!,
        UIImage(named: "Chinese-Asset")!,
        UIImage(named: "Xcode-Asset")!,
        UIImage(named: "C++-Asset")!,
        UIImage(named: "Poster-Asset")!,
        UIImage(named: "LogoDesign-Asset")!,
        UIImage(named: "Aerial-Asset")!,
        UIImage(named: "Childcare-Asset")!,
        UIImage(named: "3dprinting-Asset")!,
        UIImage(named: "Webdesign-Asset")!
        
    ]
    
    var descriptions = ["Ranging from K-12 maths in all areas.", "Covering all kinds of science, from biology to computer science.", "The perfect foreign language to learn.", "Specializing in Xcode and Swift.", "Going old school with C+", "For those who like to design posters.", "Make your own logo today!", "Got a drone, but don't know how to use it?", "Learn how to keep kids safe.", "Make 3D digital models come to life.", "Make your own webpage!"]
    
    @IBAction func buttonSignOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            performSegue(withIdentifier: "SignOut", sender: self)
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! InterestsCollectionViewCell
        cell.subjectName.text = subjects[indexPath.row]
        cell.subjectImage.image = subjectImages[indexPath.row]
        cell.subjectDescription.text = descriptions[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
