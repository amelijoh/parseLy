//
//  ViewController.swift
//  parseLy
//
//  Created by Amelia Johnston on 1/3/16.
//  Copyright © 2016 Amelia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var drinkArray = [Alcohol]()
    
    
    
    @IBOutlet weak var alcoholTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let itemOne = Alcohol(alcoholName: "Vodka", alcoholRegretLevel: 9.2)
        drinkArray.append(itemOne)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        reloadTableView()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if (cell != nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = drinkArray[indexPath.row].alcoholName!
        cell?.detailTextLabel?.text = String(drinkArray[indexPath.row].alcoholRegretLevel!)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinkArray.count
    }

    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        if (segue.sourceViewController .isKindOfClass(AddAlcoholViewController)) {
            let souceVC = segue.sourceViewController as! AddAlcoholViewController
            drinkArray.append(souceVC.newAlcohol)
            reloadTableView()
        }
    }
    
    func reloadTableView() {
        self.alcoholTableView.reloadData()
    }

}

