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

//CONSTANTS AND VARIABLES/////////////////////////////////////////////

var str = "Hello, World"
var str1 = "Hello, Max"

str = "Hello, Xcode"
str1 = "Hello, Tim"

//DATA TYPES///////////////////////////////////////////////////////////
//Character, String, Int, Double, Float, Bool
let x1: Character = "q"
let y1: String = "Poland"
let z1: Double = 1.000_052_093_845_092_394_858 //15 digits after comma
let w1: Float = 1.032_490_728_357_09//6 digits after comma
let d: Int = Int(123.30948)
let b: Bool = true

let r = "false"
let v = Float(123.12323904875092359823475)

//BASIC OPERATORS///////////////////////////////////////////////////////
//ARITHMETIC =, -, +,  /, *
//OPERATOR MODULE % let d = 100 % 6 will be 4
//СОСТАВНЫЕ ОПЕРАТОРЫ +=, -=, *=, /=
let e = 1
var f = 0
f += e
//ОПЕРАТОРЫ СРАВНЕНИЯ <=, >=, !=, ==, <, >,
10 <= 11
10 == 11

//ОПЕРАТОР ЗАМЕНЯЮЩИЙ nil ??
let defaultName = "Steve"
let name: String = "Ivan"

let myName = name ?? defaultName

//УНАРНЫЙ ОПЕРАТОР -, ТЕРНАРНЫЙ ОПЕРАТОР
-5
let bool = false
let t = bool ? 10 : 30

//ЛОГИЧЕСКИЕ ОПЕРАТОРЫ && || !
let temp = 10
let wind = 3

if temp >= 10 && wind <= 5 {
    print("!")
}
let bool1 = true
let bool2 = !bool1
!bool2

//ОПЕРАТОРЫ ДИАПАЗОНА ... ..<
1...10
1..<10

//INTERPOLATION OF STRINGS//////////////////////////////////////////////
let temperature = 12
let windSpeed = 5
let weatherDescription = "Temperature is about 12c above zero and wind speed is about 5 m/s"
let weatherDescription1 = "Temperature is about \(temperature) above zero and wind speed is about \(windSpeed) m/s"
let string = "\(1+2)" + "\(2+3)"

//ARRAYS//////////////////////////////////////////////
let arrayOne = Array<Int>()//the same
let arrayTwo = [Int]()//the same
var arrayThree: [Int] = []//the same
let arrayFour = [1, 2, 3, 4]
let arrayFive = [Int](repeating: 10, count: 6)

arrayThree += arrayFive
arrayThree

arrayFour[2]
arrayThree[1...3] = [15]
arrayThree.append(100)
arrayThree.insert(105, at: 2)
arrayThree.remove(at: 4)
arrayThree
arrayThree.removeFirst()
arrayThree
let deletedValue = arrayThree.removeLast()
arrayThree.reverse()


//DICTIONARIES
let dict1 = Dictionary<String, String>()//the same
let dict2 = [String: String]()//the same
let dict3: [String: String] = [:]//the same
var namesAndAges = ["Ivan": 30,
                    "Vitalik": 30,
                    "Sasha": 25]

namesAndAges.count
namesAndAges.isEmpty

namesAndAges["Ivan"] = 35

let deletedAge = namesAndAges.updateValue(40, forKey: "Ivan") //old value will be stored into "deletedAge"
namesAndAges
namesAndAges["Ivan"] = nil
namesAndAges


let deletedValue1 = namesAndAges.removeValue(forKey: "Sasha")//old value will be stored into "deletedAge1"
namesAndAges
namesAndAges = [:]//remove all values and keys
