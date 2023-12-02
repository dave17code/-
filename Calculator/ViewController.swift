//
//  ViewController.swift
//  Calculator
//
//  Created by woonKim on 2023/11/30.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Double = 0
    var inputValue: Double = 0
    var sum: Double = 0
    var operatorClicked: Bool = false
    var currentClickedOperator: String = ""
    
    @IBOutlet weak var calculatorInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculatorInput.text = "0"
    }
    
    @IBAction func calculatorInputDidBegin(_ sender: Any) {
        calculatorInput.text = ""
    }
    
    @IBAction func calculatorInputChanged(_ sender: Any) {
        
        if operatorClicked == false {
            currentValue = Double(calculatorInput.text!)!
        }
        
        if operatorClicked == true {
            inputValue = Double(calculatorInput.text!)!
        }
    }
    
    @IBAction func plusOperatorButton(_ sender: Any) {
        
        operatorClicked = true
        
        if operatorClicked == true {
            calculatorInput.text = ""
        }
        
        currentClickedOperator = "+"
    }
    
    
    @IBAction func minusOperatorButton(_ sender: Any) {
        
        operatorClicked = true
        
        if operatorClicked == true {
            calculatorInput.text = ""
        }
        
        currentClickedOperator = "-"
    }
    
    
    @IBAction func multiplyOperatorButton(_ sender: Any) {
        
        operatorClicked = true
        
        if operatorClicked == true {
            calculatorInput.text = ""
        }
        
        currentClickedOperator = "*"
    }
    
    
    @IBAction func divideOperatorButton(_ sender: Any) {
        
        operatorClicked = true
        
        if operatorClicked == true {
            calculatorInput.text = ""
        }
        
        currentClickedOperator = "/"
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        
        if currentClickedOperator == "+" {
            sum = currentValue + inputValue
        }
        
        if currentClickedOperator == "-" {
            sum = currentValue - inputValue
        }
        
        if currentClickedOperator == "*" {
            sum = currentValue * inputValue
            
        }
        
        if currentClickedOperator == "/" {
            sum = currentValue / inputValue
        }
        
        calculatorInput.text = String(sum)
        currentValue = Double(sum)
        inputValue = 0
    }
    
    @IBAction func InitializeButton(_ sender: Any) {
        calculatorInput.text = "0"
        calculatorInput.resignFirstResponder()
        currentValue = 0
        inputValue = 0
        sum = 0
        operatorClicked = false
    }
}
