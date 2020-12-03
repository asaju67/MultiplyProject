//
//  ViewController.swift
//  MultiplyProject
//
//  Created by user172370 on 11/6/20.
//  Copyright © 2020 user172370. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var even: UIImageView!
    
    @IBOutlet weak var yoshi: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }

    @IBAction func whenButtonPressed(_ sender: Any) {
        let number1 = Int(textfield1.text!)!
        let number2 = Int(textfield2.text!)!
        answer.text = String(number1 * number2)
        textfield2.resignFirstResponder()
        textfield1.resignFirstResponder()
        if (number2 * number1) == 64 {
            yoshi.image = UIImage(named: "yoshi-1")
        }else{
            yoshi.image = UIImage()
        }
        if (number2 * number1) % 2 == 1{
            even.image = UIImage (named: "SillyMonaLisa")
        }else{
            even.image = UIImage (named: "cat")

        }
        
    }
    @IBAction func Reset(_ sender: Any) {
        even.image = UIImage()
        yoshi.image = UIImage()
    }
    
}

