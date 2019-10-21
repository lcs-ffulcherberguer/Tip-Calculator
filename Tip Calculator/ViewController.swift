//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Fulcherberguer, Fernanda on 2019-10-10.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    
    @IBOutlet weak var totalAmountLabel: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UITextField!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var splitBetweenTextField: UITextField!
    
    @IBOutlet weak var amountPerpersonLabel: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount = Double(self.billAmountTextField.text ?? "") ?? 0
        let tipPercentage = 0.20
        
        let tipAmount =  (billAmount * tipPercentage)
        self.tipAmountLabel.text = "$\(tipAmount)"
        
        let total = (billAmount + tipAmount)
        self.totalAmountLabel.text = "$\(total)"
        
        
        
        
        
        
        
        
        
        
        
    }
    
}

