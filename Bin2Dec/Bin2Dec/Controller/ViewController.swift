//
//  ViewController.swift
//  Bin2Dec
//
//  Created by Akshay Ramesh on 6/27/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var binaryTextField: UITextView!
    @IBOutlet weak var decimalTextField: UITextView!
    let binaryToDecimalObject = BinaryToDecimal()
    let emptyStringPlaceholder = "Please enter a binary number..."
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func binaryNumberButton(_ sender: UIButton) {
        if let binaryNumber = sender.titleLabel?.text {
            binaryTextField.text.append(binaryNumber)
        }
    }
    
    @IBAction func converToDecimal(_ sender: UIButton) {
        let binary = binaryTextField.text!
        if binary != ""{
            decimalTextField.text = binaryToDecimalObject.convertBinaryToDecimal(binaryNumber: binary)
        } else {
            decimalTextField.text = emptyStringPlaceholder
        }
        binaryTextField.text = ""
    }
}

