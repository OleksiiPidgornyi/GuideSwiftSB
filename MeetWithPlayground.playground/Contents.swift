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

//SETS///////////////////////////////////////////////////////////////////////////
let setOne = Set<String>()
let setTwo: Set<String> = []
var setThree: Set = [1, 2, 3, 4, 4]

setThree.insert(5)
setThree.insert(6)
setThree.insert(7)

setThree.isEmpty
setThree.count
setThree.remove(6)

setThree.contains(1)//boolean value
let boolValue = setThree.contains(1)
boolValue

let setFromOneToThree: Set = [1, 2, 3]
let setFromFourToNine: Set = [4, 5, 6, 7, 8, 9]

let allValuesArray = setFromOneToThree.union(setFromFourToNine).sorted()
let commonValuesSet = setFromOneToThree.intersection(setFromFourToNine)

let notRepeatedValuesArray = setFromOneToThree.symmetricDifference(setFromFourToNine).sorted()
let subtractedValuesArray = setFromOneToThree.subtracting(setFromFourToNine).sorted()

//Instruction IF///////////////////////////////////////////////////////////////////////////

let a1 = 3
let b1 = 1

if a1 == b1 {
    print("a1 equals to b1")
} else if a1 < b1 {
    print("b1 exceeds a1 by \(b1 - a1)")
} else if b1 < a1 {
    print("a1 exceeds b1 by \(a1 - b1)")
}

let isSunny = true
var action = ""

if isSunny {
    action = "I will go for a walk"
} else {
    action = "I will sit at home"
}

action = isSunny ? "I will go for a walk" : "I will sit at home"

//if a1 != b1
//if a1 <= b1
//if a1 >= b1
//if a1 > b1
//if a1 < b
// ~= if something is including into diapasone

if 1...4 ~= b1 {
    print("Hello World!")
}

if a1 == b1 {
    
}
let c1 = 5
if c1 == 2 && a1 == 10 || c1 == 6 {
    print("Hello, coder")
} else {
    print("!!!")
}

// Guard ///////////////////////////////////////////////////////////////////////////
func someFunction(a2: Int, b2: Int) {
    guard a2 == b2 else {return}
    //some code to run
    guard b2 == 11 else {return}
    //some code to run
    if a2 == b2 {
        //some code to run
        if b2 == 11 {
            //some code to run
        }
    }
}

for i in 1...5 { //the same
    guard i != 3 else {continue}
    print(i)
}
for i in 1...5 { //the same
    guard i == 3 else {break}
    print(i)
}

// Instruction SWITCH ///////////////////////////////////////////////////////////////////////////
let totalScore = 20

if totalScore == 10 {
    print("you are not jedi")
} else if totalScore == 20 {
    print("you are not jedi")
} else if totalScore == 100 {
    print("you are jedi")
}

switch totalScore {
case 10, 20:
    print("you are not jedi")
    fallthrough
case 50..<100:
    print("you are almost jedi")
case 100:
    print("you are jedi")
default:
    break
}

// Cycle FOR-IN ///////////////////////////////////////////////////////////////////////////
let array = [1, 2, 3, 4]
let arrayOfStrings = ["a", "b", "c"]
for index in array {
    print(index)
}
for index in arrayOfStrings {
    print(index)
}

let string1 = "some string"

for char in string1 {
    print(char)
}

let nameAndFingers = ["Ivan": 20, "Svetlana": 18, "Nadejda": 15]
for (name, numberOfFingers) in nameAndFingers {
    print("Pyro name is \(name) and number of fingers is \(numberOfFingers)")
}

for (index, value) in nameAndFingers.enumerated() {
    print(index, value)
}

for i in stride(from: 0, through: 10, by: 5) {//iteration with a step of 5 from 0 to 10 (through means - "including")
    print(i)
}

//Cycles WHILE, REPEAT-WHILE ///////////////////////////////////////////////////////////
var timer = 5
print("Counting down")

while timer > 0 {
    print(timer)
    timer -= 1
}
print("Start")

repeat {
    print(timer)
    timer -= 1
} while timer > 0
print("Start")
