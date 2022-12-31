//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Joao Teixeira on 28/12/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiLabel: String?
    var adviceMessage: String?
    var color: UIColor?
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var resultMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelResult.text = bmiLabel
        resultMessage.text = adviceMessage
        view.backgroundColor = color
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
