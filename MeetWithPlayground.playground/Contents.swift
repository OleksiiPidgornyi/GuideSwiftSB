import UIKit

var str2 = "Hello, playground"

let y = 10

var x = y + 10

for i in 1..<10 {
    print("i equal \(i)")
}
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
label.backgroundColor = UIColor.red
label.text = str2
label.layer.cornerRadius = 50
label.layer.masksToBounds = true

//CONSTANTS AND VARIABLES

var str = "Hello, World"
var str1 = "Hello, Max"

str = "Hello, Xcode"
str1 = "Hello, Tim"

//DATA TYPES
//Character, String, Int, Double, Float, Bool
let x1: Character = "q"
let y1: String = "Poland"
let z1: Double = 1.000_052_093_845_092_394_858 //15 digits after comma
let w1: Float = 1.032_490_728_357_09//6 digits after comma
let d: Int = Int(123.30948)
let b: Bool = true

let r = "false"
let v = Float(123.12323904875092359823475)

