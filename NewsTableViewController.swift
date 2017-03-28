//
//  NewsTableViewController.swift
//  Module_2
//
//  Created by Rael Kenny on 3/27/17.
//  Copyright © 2017 Rael Kenny. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var titles:[String] = [
        "Lakers score again",
        "Apple opens with iWatch",
        "Man Utd Win again",
        "Trump is impeached",
        "MacBook Air is so thin"
    ]
    
    var authors:[String] = [
        "Bob",
        "Rael",
        "James",
        "Jennifer",
        "Anne"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // Dequeue a table view cell
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        
        // If there's no cell, create one
        if cell == nil
        {
            cell = UITableViewCell(style:UITableViewCellStyle.subtitle, reuseIdentifier:"cellIdentifier")
        }
        
        // Set the text and detail text
        cell!.textLabel?.text = titles[indexPath.row]
        cell!.detailTextLabel?.text = authors[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var detailVC:NewsDetailViewController = NewsDetailViewController(nibName: "NewsDetailViewController", bundle: nil)
        
        detailVC.title = titles[indexPath.row]
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
    

    
}
