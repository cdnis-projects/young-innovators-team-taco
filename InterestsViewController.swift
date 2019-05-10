//
//  FirstViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 2/11/2018.
//  Copyright © 2018 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase

var subjects = ["Math", "Science", "Mandarin", "Xcode", "C++", "Poster Design", "Logo Design", "Aerial Photography", "Child Care", "3D Printing", "Web Design"]

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

var row = 0

class InterestsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = subjects[indexPath.row]
        cell.imageView?.image = subjectImages[indexPath.row]
        
        return cell 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        row = indexPath.row
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Number of Subjects: ", subjects.count)
        print(subjects)
    }


}

