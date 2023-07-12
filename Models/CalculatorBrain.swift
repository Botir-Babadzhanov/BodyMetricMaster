import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi)
        return bmiToOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let calcBMI = String(format: "%.1f", weight / pow(height, 2))
    }
    
}
 
