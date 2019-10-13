//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Fulcherberguer, Fernanda on 2019-10-10.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var totalTip: UITextField!
    
    @IBOutlet weak var tipAmount: UITextField!
    
    @IBOutlet weak var amountBill: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        //Double means to be acurrate
        let amountBill = Double(self.amountBill.text ?? "") ?? 0
        let tipPercentage = 0.20
        
        let tipAmount = (amountBill * tipPercentage)
        self.amountBill.text = "$\(tipAmount)"
        
        let total = (amountBill + tipPercentage)
        self.totalTip.text = "$\(total)"
        
        
        
        
        
        
        
    }
    
}











