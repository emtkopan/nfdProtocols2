//
//  ProtocolsTableViewController.swift
//  NFDProtcols
//
//  Created by David Duong on 6/8/19.
//  Copyright © 2019 David Duong. All rights reserved.
//

import UIKit

class ProtocolsTableViewController: UITableViewController {

    var category1 = ["Adult Medical","Adult Trauma","Pediatric Medical","Pediatric Trauma","OB/GYN","Important Notes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return category1.count
    }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = category1[indexPath.row]
        
        
        return cell
        
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segue1", sender: nil)
    }
   

}
