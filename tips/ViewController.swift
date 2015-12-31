//
//  ViewController.swift
//  tips
//
//  Created by Elliott Battle on 12/30/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var rateSegment: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onRateChange(sender: AnyObject) {
        onEditingChanged(sender)
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.15, 0.20, 0.25]
        let billAmount =  NSString(string : billField.text!).doubleValue
        let tip = billAmount * tipPercentages[rateSegment.selectedSegmentIndex]
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

