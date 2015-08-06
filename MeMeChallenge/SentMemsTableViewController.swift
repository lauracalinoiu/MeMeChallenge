//
//  SentMemsTableViewController.swift
//  MeMeChallenge
//
//  Created by Laura Calinoiu on 06/08/15.
//  Copyright © 2015 Apress. All rights reserved.
//

import UIKit

class SentMemsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var memes: [MeMe]!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        memes = appDelegate.memes
        print("memes no  \(memes.count)")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as UITableViewCell
        cell.imageView?.image = memes[indexPath.row].memedImg
        cell.textLabel?.text = "\(memes[indexPath.row].topComment)      \(memes[indexPath.row].bottomComment)"
        return cell
    }

}
