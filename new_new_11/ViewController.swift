//
//  ViewController.swift
//  Lecture 11
//
//  Created by Ana Dzebniauri on 30.06.22.
//

import UIKit

class ViewController: UIViewController {
    var num1: Int!
    var num2: Int!
    var num3: Int!
    
    
    @IBOutlet weak var randomNum1: UILabel!
    @IBOutlet weak var randomNum2: UILabel!
    @IBOutlet weak var randomNum3: UILabel!
    @IBOutlet weak var txtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.randomNum1.layer.cornerRadius = 20
        self.randomNum2.layer.cornerRadius = 20
        self.randomNum3.layer.cornerRadius = 20
        self.txtField.layer.cornerRadius = 20
        self.bttn.layer.cornerRadius = 20
        self.result.layer.cornerRadius = 20
        
        randomizeFields()
    }
    
    @IBAction func txtField(_ sender: Any) {
    }
    @IBAction func slider(_ sender: UISlider) {
        randomizeFields()
    }
    
    func randomizeFields() {
        num1 = Int.random(in: 1...100)
        num2 = Int.random(in: 1...100)
        num3 = Int.random(in: 1...100)
        
        randomNum1.text = String(num1)
        randomNum2.text = String(num2)
        randomNum3.text = String(num3)
    }
    
    @IBOutlet weak var bttn: UIButton!
    
    @IBAction func bttn(_ sender: Any) {
        switch txtField.text {
        case "max" : do {
            
            let max: Int = max(num1, num2, num3)
            result.text = String(max)
        }
        case "avg" : do {
            let avg = (num1 + num2 + num3)/3
            result.text = String(avg)
        }
        case "sum" : do {
            let sum = (num1 + num2 + num3)
            result.text = String(sum)
        }
        default:
            result.text = "Invalid Value"
            
        }
    }
    
    @IBOutlet weak var result: UILabel!
    
}






