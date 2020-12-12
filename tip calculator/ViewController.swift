//
//  ViewController.swift
//  tip calculator
//
//  Created by Alice Yu on 12/11/20.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = tip + bill
        tipPercentageLabel.text = String (format: "$%.2f" , tip)
        totalLabel.text = String (format: "$%.2f" , total)
    }
}
