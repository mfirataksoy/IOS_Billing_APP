//
//  ViewController.swift
//  Prework
//
//  Created by Aksoy, Mehmet on 9/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var percentageBar: UISegmentedControl!
    
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    
    
   
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[percentageBar.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format:"$%.2f", tip)
        totalAmount.text = String(total)
    }
}

