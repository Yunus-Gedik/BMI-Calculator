//
//  ResultBMIViewController.swift
//  BMI Calculator
//
//  Created by Yunus Gedik on 2.11.2021.
//

import UIKit

class ResultBMI: UIViewController {
    
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    var bmiText: String?
    var adviceText: String?
    var resultColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmiText
        advice.text = adviceText
        view.backgroundColor = resultColor
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
