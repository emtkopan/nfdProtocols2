//
//  ProtocolTitleTableViewController.swift
//  NFDProtcols
//
//  Created by David Duong on 6/10/19.
//  Copyright © 2019 David Duong. All rights reserved.
//

import UIKit

class ProtocolTitleTableViewController: UITableViewController {

    var protoTitle = ["Abdominal Pain","Chest Pain","Nausea/Vomiting","Respiratory Distress"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return protoTitle.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)

        cell.textLabel?.text = protoTitle[indexPath.row]

        return cell
    }

    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segue2", sender: nil)
    }

}
