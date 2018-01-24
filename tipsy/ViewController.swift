//
//  ViewController.swift
//  tipsy
//
//  Created by Nimesh Baral on 1/23/18.
//  Copyright © 2018 Nimesh Baral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tippercent = [0.18, 0.2, 0.25]

        let bill = Double(billField.text!) ?? 0
        let tip = bill * tippercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    }
}
