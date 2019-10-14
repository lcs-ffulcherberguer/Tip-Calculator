//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Fulcherberguer, Fernanda on 2019-10-10.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//


import Foundation

class TipCalculator {
    var amountBeforeTax: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    init(amountBeforeTax: Double, tipPercentage: Double) {
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    
    func calculateTip()  {
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
}




import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider:  UISlider!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    @IBOutlet weak var eachPersonAmount:  UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0.10)
    
    func calculateTip() {
        
    }
    
    func updateUI() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        amountBeforeTaxTextField.becomeFirstResponder()
    }
    
    func calculateTip() {
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
    }
    
    func updateUI(){
        
    }
    
    //Mark: - Target / Action
    
    @IBAction func tipSliderValueChanged(sender: Any) {
        tipPercentageLabel.text = String (format: "Tip: %02d%", Int(tipPercentageSlider.value))
        calculateTip()
    }
    
    @IBAction func numberOfPeopleSliderValueChanged(sender: Any) {
        numberOfPeopleLabel.text = "Split: \(Int(numberOfPeopleSlider.value))"
        calculateTip()
        
    }

    @IBAction func amountBeforeTaxTextfieldChanged(sender: Any) {

    }

    @IBAction func amountBeforeTaxTextfieldChanged(sender: Any) {
     calculateTip
}



}
 
