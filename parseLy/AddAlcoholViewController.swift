//
//  AddAlcoholViewController.swift
//  parseLy
//
//  Created by Amelia Johnston on 1/3/16.
//  Copyright © 2016 Amelia. All rights reserved.
//

import UIKit

class AddAlcoholViewController: UIViewController {

    let newAlcohol = Alcohol(alcoholName: "", alcoholRegretLevel: 0.0)
    
    @IBOutlet weak var alcoholNameText: UITextField!
    
    @IBOutlet weak var alcoholRegretLevelText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func RememberButton(sender: UIButton) {
        createNewAlcohol()
        print(newAlcohol.alcoholName)
    }
    
    func createNewAlcohol() {
        newAlcohol.alcoholName = alcoholNameText.text!
        newAlcohol.alcoholRegretLevel = Double(alcoholRegretLevelText.text!)
    }
    

}
