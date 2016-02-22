//
//  ViewController.swift
//  SwifTrail
//
//  Created by jonathan thornburg on 11/24/15.
//  Copyright © 2015 jonathan thornburg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource {

    var trails: NSArray = []
    let defaultSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    var dataTask: NSURLSessionDataTask?
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        if let selectedCell = tableView.indexPathForSelectedRow
        {
            tableView.deselectRowAtIndexPath(selectedCell, animated: true)
        }
    }

    @IBAction func clearButtonTapped(sender: AnyObject) {
        textField.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark *TableView DataSource Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("trailCell") as! Custom
        return cell
    }
        
    // Mark *TextField Delegate Methods
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if !textField.text!.isEmpty
        {
            if dataTask != nil
            {
                dataTask?.cancel()
            }
        }
        
        let city = textField.text?.stringByReplacingOccurrencesOfString(" ", withString: "+")
        let safeCity = city?.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        let url = NSURL(string: "https://outdoor-data-api.herokuapp.com/api.json?api_key=d6d33ee90666c461d901c731cc104b79&q[city_cont]=\(safeCity)")
        
        //Need to call trail.initWithDictionary()
        dataTask = defaultSession.dataTaskWithURL(url!)
            {
                data, response, error in
            }
        
        return true
    }
    
    // Mark *Data Retrieval Methods
    func loadTrails(string: String)
    {
        let trailController: TrailController
    }
}

