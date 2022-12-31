//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
        
    var calculatorBrain = CalculatorBrain()
    //var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAltura(_ sender: UISlider) {
        //        let valueHeight = round(sender.value * 100) / 100
        //        print(valueHeight)
        //print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"

    }
    
    @IBAction func sliderPeso(_ sender: UISlider) {
        //print(String(format: "%.0f", sender.value))
        //print(Int(sender.value))
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)Kg"

    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        //bmi = weight/heightx2
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        let bmi = weight / pow(height, 2)
//        bmiValue = String(format: "%.1f", bmi)

        calculatorBrain.calculateBMI(height: height, weight: weight)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculateSegue" { //segurança boa prática, verificar o segue
            let destinationVC = segue.destination as! ResultViewController //aceder à variavel toplevel (bmiLabel) do 2ndVC
            destinationVC.bmiLabel = calculatorBrain.getBMIValue()
            destinationVC.adviceMessage = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
    
        }
    }
    
    
}

