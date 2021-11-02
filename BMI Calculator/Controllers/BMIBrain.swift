//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Yunus Gedik on 2.11.2021.
//

import Foundation
import UIKit

struct BMIBrain{
    
    var bmi = BMI()
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmiValue = weight / pow(height,2)
        bmi.bmi = bmiValue
        if(bmiValue < 18.5){
            bmi.advice = "Eat more pies."
            bmi.color = UIColor.blue
        }
        else if(bmiValue < 25){
            bmi.advice = "You are good, go get some cookies."
            bmi.color = UIColor.green
        }
        else{
            bmi.advice = "Eat less pies."
            bmi.color = UIColor.red
        }
    }
    
    func getBmiValue()-> String{
        return String(format:"%.2f", bmi.bmi!);
    }
    func getAdvice()-> String{
        return bmi.advice!
    }
    func getColor()-> UIColor{
        return bmi.color!
    }
    
}
