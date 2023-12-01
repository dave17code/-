//
//  ViewController.swift
//  Calculator
//
//  Created by woonKim on 2023/11/30.
//

import UIKit

class ViewController: UIViewController {
    
    var sum: Double = 0
    var currentValue: Double = 0
    var inputValue: Double = 0
    var operatorApplied: Bool = false
    var currentAppliedOperator = ""
    
    @IBOutlet weak var sumTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plusOperatorButton(_ sender: Any) {
        
        operatorApplied = true
        
        if operatorApplied == true {
            sumTextField.text = ""
        }
        
        currentAppliedOperator = "+"
    }
    
    
    @IBAction func minusOperatorButton(_ sender: Any) {
        
        operatorApplied = true
        
        if operatorApplied == true {
            sumTextField.text = ""
        }
        
        currentAppliedOperator = "-"
    }
    
    
    @IBAction func multiplyOperatorButton(_ sender: Any) {
        
        operatorApplied = true
        
        if operatorApplied == true {
            sumTextField.text = ""
        }
        
        currentAppliedOperator = "*"
    }
    
    
    @IBAction func divideOperatorButton(_ sender: Any) {
        
        operatorApplied = true
        
        if operatorApplied == true {
            sumTextField.text = ""
        }
        
        currentAppliedOperator = "/"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        
        if currentAppliedOperator == "+" {
            sum = currentValue + inputValue
        }
        
        if currentAppliedOperator == "-" {
            sum = currentValue - inputValue
        }
        
        if currentAppliedOperator == "*" {
            sum = currentValue * inputValue
        }
        
        if currentAppliedOperator == "/" {
            sum = currentValue / inputValue
        }
        
        sumTextField.text = String(sum)
        currentValue = sum
        inputValue = 0
    }
    
    @IBAction func InitializeButton(_ sender: Any) {
        sumTextField.text = ""
        sum = 0
        currentValue = 0
        inputValue = 0
        operatorApplied = false
    }
    
    @IBAction func sumTextFieldChanged(_ sender: Any) {
        
        if operatorApplied == false {
            currentValue = Double(sumTextField.text!)!
        }
        
        if operatorApplied == true {
            inputValue = Double(sumTextField.text!)!
        }
    }
}
