//
//  ProviderListingViewController.swift
//  TaCo
//
//  Created by Thomas Ng on 2/11/2018.
//  Copyright © 2018 Thomas Ng. All rights reserved.
//

import UIKit
import Firebase

class ProviderListingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Create a empty array of Person (struct) objects
    var providers = [Provider.Person]()

    /* A private function that loads in sample users and adds them to the
    providers array */
    private func loadSampleProviders() {
        
        let alisonProfileImage = UIImage(named: "alison")
        let barryProfileImage = UIImage(named: "barry")
        let bobProfileImage = UIImage(named: "bob")
        let emilyProfileImage = UIImage(named: "emily")
        
        guard let emily = Provider.Person(profileImage: emilyProfileImage, firstName: "Emily", lastName: "Knight", interests: ["Swift"]) else {
            fatalError("Unable to instantiate user")
        }
        
        guard let bob = Provider.Person(profileImage: bobProfileImage, firstName: "Bob", lastName: "Smith", interests: ["Hiking"]) else {
            fatalError("Unable to instantiate user")
        }
        
        guard let alison = Provider.Person(profileImage: alisonProfileImage, firstName: "Alison", lastName: "Smith", interests: ["Math", "Science"]) else {
            fatalError("Unable to instantiate user")
        }
        
        guard let barry = Provider.Person(profileImage: barryProfileImage, firstName: "Barry", lastName: "Benson", interests: ["Hiking", "Robotics"]) else {
            fatalError("Unable to instantiate user")
        }
        
        providers += [alison, barry, bob, emily]
        print(providers.count)
        print(providers[0].firstName)
    }
    
    /* TableView function which returns the number of rows based on the total
    number of elements in the providers array */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return providers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = providers[indexPath.row].firstName
        cell.imageView!.image = providers[indexPath.row].profileImage
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleProviders()
        // Do any additional setup after loading the view.
    }
    


}
