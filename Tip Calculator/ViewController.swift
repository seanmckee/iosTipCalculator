//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sean McKee on 2/22/19.
//  Copyright © 2019 Sean McKee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subtotalInput: UITextField!
    @IBOutlet weak var tipPercentageInput: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBAction func calculate(_ sender: UIButton) {
        
        if let subTotal = Double(subtotalInput.text!), let tipPercentage = Double(tipPercentageInput.text!){
            let tip = subTotal * (tipPercentage/100)
            let total = subTotal + tip
            tipAmountLabel.text = String(round(100*tip)/100);
            totalAmountLabel.text = String(round(100*total)/100)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

