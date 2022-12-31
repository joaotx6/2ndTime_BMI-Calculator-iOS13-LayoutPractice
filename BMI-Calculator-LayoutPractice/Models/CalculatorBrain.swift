//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Joao Teixeira on 28/12/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Estás com peso a menos!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Estás com peso normal!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Estás com peso a mais!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormatted
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advices"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
}
