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
    
    //Button Pressed as a false boolean
    var buttonPressed: Bool = false
    //Tip Percent as a double data type with decimal places
    var tipPercent = Double (0.0)
    
    
    
    
    
    
  
    @IBOutlet weak var totalAmount: UILabel!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var splitBetweenTextField: UITextField!
    
    @IBOutlet weak var amountPerPerson: UILabel!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    //MARK: Methods
    
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tip5(_ sender: Any) {
        tipPercent = 0.05
        buttonPressed = true
    }
    
    @IBAction func tip10(_ sender: Any) {
        tipPercent = 0.10
        buttonPressed = true
    }
    
    @IBAction func tip15(_ sender: Any) {
        tipPercent = 0.15
        buttonPressed = true
    }
    
    @IBAction func tip20( sender:Any) {
        tipPercent = 0.20
        buttonPressed = true
    
    }
    
    //  Get the amount of bill value from the text field
    @IBAction func calculateTip( sender:Any) {
    
    //Check if a tip option is selected
        if buttonPressed == false {
            errorLabel.text = "Error. Please check all fields are completed."
            return
    }
        
    //Check if amount of people has a value
        guard let amountOfBillString = billAmountTextField.text, amountOfBillString != ""  else {
            errorLabel.text = "Error. Please check all fields are completed."
            return
    }
        
    //Check if amount of people has a value
        guard let amountOfPeopleString = splitBetweenTextField.text, amountOfPeopleString != "" else {
        errorLabel.text = "Error. Please check all fields are completed."
        return
        
    }
        
    //Try to convert the string into a double data type display error message if cannot be converted
        guard let amountOfBillDouble = Double(amountOfBillString) else {
        errorLabel.text = "Error. Please enter a number."
                return
        }
        
        guard let amountOfPeopleDouble = Double(amountOfPeopleString) else {
            //   errorLabel.text = "Error. Please enter a number."
            return
        }
        
       // Calculate tip amount, round it, and change it into a string
        let tipAmount = amountOfBillDouble * tipPercent
        let roundedTipAmount = (round(100*tipAmount)/100)
        let tipAmountSring = String(roundedTipAmount)
        
        // Share information to the user interface
        
        
        
        
        
        
        
        
}
}
