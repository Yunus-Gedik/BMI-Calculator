//
//  ResultBMIViewController.swift
//  BMI Calculator
//
//  Created by Yunus Gedik on 2.11.2021.
//

import UIKit

class ResultBMI: UIViewController {
    
    @IBOutlet weak var bmiValue: UILabel!
    
    var bmiText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmiText
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
