import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiToOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, 2)
        
        if  bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: UIColor.yellow)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You Good", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop Eating too much!", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Adice for youm (:"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
}
 
