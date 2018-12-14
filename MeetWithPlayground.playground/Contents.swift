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

//Functions ///////////////////////////////////////////////////////////
//1.Function that accept nothing and return nothing
func sayHello() -> Void {
    print("Hello")
}
sayHello()
//2.Function accepting one parameter
func oneParam(param: Int) {
    var oops = param
    oops += 1
}
oneParam(param: 11)
//3.Function not accepting parameters, but return value
func returnValue() -> Int {
    return 10
}

let a = returnValue()
//4.Function that accepts couple of parameters and returns a value
func giveMeYour(name: String, andSecondName: String) -> String {
    return "Your full name is \(name) \(andSecondName)"
}
giveMeYour(name: "O", andSecondName: "P")
//5.Function that accepts array as a parameter and using incapsulated function for the work
func calcMoneyIn(array: [Int]) -> Int {
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    for item in array {
        sum += item
    }
    sayMoney()
    return sum
}
calcMoneyIn(array: [1,2,3,4,5])
//6.Function that accepts variable name of parameters
func findSum(ofIntegers integers: Int...) -> Int {
    var sum = 0
    
    for item in integers {
        sum += item
    }
    return sum
}
findSum(ofIntegers: 1,2,3,4,5,6)
//7.names of parameters of function
func sum(_: Int) -> Int {
    return 10
}
//8.function in case of returning
func whatToDo(missed: Bool) -> (Int) -> Int {
    func missedCountUp(input: Int) -> Int {return input + 1}
    func missedCountDown(input: Int) -> Int {return input - 1}
    
    return missed ? missedCountUp : missedCountDown
}
var missedCount = 0
whatToDo(missed: true)(missedCount)

// Closures /////////////////////////////////////////////////////////
func whateverFunc() {
    print("Hello World")
}
let closure = {
    print("Hello World")
}
func repeatThreeTimes(closure: () -> ()) {
    for _ in 0...2 {
        closure()
    }
}
repeatThreeTimes {closure()}
print("One more")
repeatThreeTimes(closure: closure)
print("One more")
repeatThreeTimes(closure: {
    print("Hello World")
})
print("One more")
repeatThreeTimes {
    () -> () in
    print("Hello, World!")
}

let unsortedArray = [123,2,32,67,8797,432]
let sortedArray = unsortedArray.sorted {
    (number1: Int, number2: Int) -> Bool in
    return number1 < number2
}

// Tuples ///////////////////////////////////////////////////////////////////
let one = 1
let two = 2
let three = 3
(one, two, three)
let boy = (5, "Sergey")
boy.0
boy.1

let (first, second, third) = (1,2,3)
first
second

let greenPencil = (color: "green", length: 20, weight: 4)
greenPencil.color
greenPencil.length
greenPencil.weight
let (greenColor, greenLength, greenWeight) = greenPencil
greenColor
greenLength
greenWeight

let agesAndNames = ["Misha": 29, "Kostya": 90, "Mira": 30]

var age1 = 0
var name1 = ""

for (nameInD, ageInd) in agesAndNames {
    if age1 < ageInd {
        age1 = ageInd
        name1 = nameInD
    }
}
age1
name1

// Optinals //////////////////////////////////////////////////
var fuel: Int? //optinals are only variables
fuel = 20
fuel = 40
//print("\(fuel!) liters left")

if let availableFuel = fuel {
    print("\(availableFuel) liters left")
} else {
    print("no fuel data available")
}

func checkFuel() {
    guard let availableFuel = fuel else {
        print("no fuel data available")
        return
    }
     print("\(availableFuel) liters left")
}
checkFuel()

// Classes ////////////////////////////////////////////////////////
class Human {
    var name = "Ivan"
    var age: Int? = 30
    var hairs = true
    
    func description() -> String {
        
        if let humanAge = age {
            return "Hello! My name is \(name) and I'am \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)!"
        }
        
    }
}

let humanOne = Human()
humanOne.name = "Natasha"
humanOne.name
humanOne.description()

let humanTwo = Human()
humanTwo.hairs = false
humanTwo.name = "Jack"
humanTwo

//humanOne = humanTwo - if objects are "let" that you can't assign one object to another
humanOne.name

var array1 = [Human]()
array1.append(humanOne)
array1.append(humanTwo)

// Initializers ///////////////////////////////////////////////////////////
class Human1 {
    var name: String
    var age: Int? = 30
    var hairs: Bool
    
    func description() -> String {
        if let humanAge = age {
            return "Hello! My name is \(name) and I'am \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)"
        }
    }
    
    init() {
        name = "Ivan"
        hairs = true
    }
    init(name: String, age: Int?, hairs: Bool) {
        self.name = name
        self.age = age
        self.hairs = hairs
    }
}
let human1 = Human1()
human1.age
human1.name
human1.hairs


let human2 = Human1(name: "Jason", age: nil, hairs: true)

// Inheritance ////////////////////////////////////////////////////////
//final means "forbidance" to inheritance or to initialize from current class
class Human2 {
    //Properties
    var name: String
    
    //Method
    func tellAboutMe() -> String {
        return "Hello! My name is \(name)"
    }
    //Initializer
    init(name: String) {
        self.name = name
    }
}
class Child: Human2 {
    //Properties
    var toy = "Horse"
    //Methods
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        return originalText + "And I have a toy \(self.toy)"
    }
    //Initializer
    init(toy: String, name: String) {
        super.init(name: name)
        self.toy = toy
    }
    override init(name: String) {
        self.toy = "Hummer"
        super.init(name: name)
    }
}

let child = Child(name: "Simphson")
child.tellAboutMe()
child.name
child.toy

let child1 = Child(toy: "Dinosaur", name: "Max")
child1.tellAboutMe()

// Computed Properties //////////////////////////////////////////////
class Rectengular {
    let height : Int
    let width : Int
    let depth : Int
    
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}
let rect = Rectengular(height: 10, width: 12, depth: 13)
rect.volume


class Person {
    //Properties
    //Stored properties
    var name: String
    var secondName: String
    //Computed properties
    var fullName: String {
        get {
        return name + " " + secondName
        }
        set(anotherNewValue) {
            let array = anotherNewValue.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
    }
    //Initializer
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name:"Ivan", secondName: "Akulov")
person.fullName

person.name
person.secondName
person.fullName = "Zinaida Petrova"
person.name
person.secondName

// Class properties /////////////////////////////////////////
class Car {
    //Stored properties
    let products: Int
    let people: Int
    let pets: Int
    let selfWeight = 1500
    let maxWeight = 2000
    
    //Computed properties
    class var selfWeight: Int {return 1500}
    class var maxWeight: Int {return 2000}
    var totalWeight: Int {
        get {
            return products + people + pets + Car.selfWeight
        }
        set {
            
        }
    }
    
    //Initializer
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 300, pets: 50)
let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight
let totalWeight = car.totalWeight

if maxWeight < totalWeight {
    print("You can't drive because car is overloaded: \(totalWeight - maxWeight)")
} else {
    print("You can drive!")
}

//Lazy properties /////////////////////////////////////////
func bigDataProcessingFunc() -> String {
    return "very long process"
}
class Processing {
    let smallDataProcessing = "small data processing"
    let averageProcessing = "average data processing"
    lazy var bigDataProcessing = bigDataProcessingFunc() //lazy by default nil that is why it is "var"
}

let process = Processing()
process.bigDataProcessing
process

//Property observers /////////////////////////////////////////

class SecretLabEmployee {
    var accessLevel  = 0 {
        willSet(newValue) {
            print("new boss is about to come")
        print("last time I had access level  \(newValue)")
        }
        didSet(oldValue) {
            if accessLevel > 0 {
                accessToDB = true
            } else {
                accessToDB = false
            }
            print("new boss just come")
            print("last time I had access level \(oldValue)")
        }
    }
    var accessToDB = false
}

let employee = SecretLabEmployee()
employee.accessLevel
employee.accessToDB

employee.accessLevel = 1
employee.accessToDB

//Levels of access //////////////////////////////////////////////
// internal
//private
//public
//open

// Type aliases //////////////////////////////////////////////
typealias Meter = Int
let length: Meter = 50
let length1 = 1
let sum: Meter = length + length1
typealias DoubleInteger = (Int, Int)
let someConstant: DoubleInteger = (1, 2)
typealias DictionaryType = [String: Int]

var dictionary: DictionaryType = [:]
dictionary["Apartment123"] = 123
dictionary

// ENUMS //////////////////////////////////////////////
enum Movement: Int {
    case forward = 10
    case backward = 20
    case left
    case right
}
let movementDirection = Movement.left.rawValue

enum Device {
    case iPad(color: String), iPhone
    
    var year: Int {
        switch self {
            case .iPhone: return 2007
            case .iPad(let color) where color == "black": return 2020
            case .iPad: return 2010
        }
    }
}

let yearOfProduction = Device.iPad(color: "black").year

enum Character {
    enum Weapon: Int {
        case sword = 4
        case wand = 1
        
        var damage: Int {
            return rawValue * 10
        }
    }
    enum CharacterType {
        case knight
        case mage
    }
}

let charWeapon = Character.Weapon.sword.damage

enum Lunch { // or you can put "indirect" before enum and than all cases will be indirect
    case salad
    case soup
    indirect case meal(Lunch, Lunch)
}

let myLunch = Lunch.meal(.salad, .soup)
