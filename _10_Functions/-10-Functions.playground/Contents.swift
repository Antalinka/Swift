//1
func heart() -> String {
    return "\u{1F49D}";
}

func people() -> String {
    return "\u{1F46B}"
}

func phone() -> String {
    return "\u{260E}"
}

let allStrings = heart() + people() + phone()

print("\(allStrings)")


let evenLetters = ["b", "d", "f", "h"]

//2
func checkColor(letter: String, number: Int) -> String {
    
    var isEven = false
    let isNumberEven = (number % 2 != 1)
    
    for a  in evenLetters {
        if a == letter {
            isEven = true
        }
    }

    return isEven != isNumberEven ? "white" : "black"
}

checkColor("a", number: 1)
checkColor("a", number: 2)
checkColor("g", number: 6)
checkColor("f", number: 1)


//3

func reverse(allElements: [Int]) -> [Int] {
    
    var reverseOrder = [Int]()
    for var i = allElements.count - 1; i >= 0; i-- {
        
        reverseOrder.append(allElements[i])
    }
    
    return reverseOrder
}


let testArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
reverse(testArray)


func reverseForInt(numbers: Int...) -> [Int] {
    
    return reverse(numbers)
}

reverseForInt(1, 2, 3, 4, 5, 6, 7, 8, 9)


//4

func reverseInOut(inout allElements: [Int]) -> [Int] {
    
    var reverseOrder = [Int]()
    for var i = allElements.count - 1; i >= 0; i-- {
        
        reverseOrder.append(allElements[i])
    }
    
    allElements = reverseOrder
    
    return reverseOrder
}

var testArray2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

reverseInOut(&testArray2)

testArray2

//5
let digitals = [0 : "zero", 1 : "one", 2 : "two", 3 : "three", 4 : "four", 5 : "five", 6 : "six", 7 : "seven", 8 : "eight", 9 : "nine"]


func stringProceed(str: String) -> String {
    
    var newStr = ""
    for char in str.characters {
        
        switch char {
            
        case "a", "e", "i", "o", "u":
                newStr += (String(char).uppercaseString)
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            
            let index = Int(String(char))!
            newStr += digitals[index]!
            
       case "b","c","d","f","g","h","j","k","l","m","n","p","r","q","s","t","v","w","x","y","z":
            
                newStr += (String(char).lowercaseString)
            
       case " ":
            newStr += " "
            
        default: break
        }
    }
    
    return newStr
}

let testText = "1,2,3,4,5,6,7,8,9,0 Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.Swift’s unified function syntax is flexible enough to express anything from a simple C-style function with no parameter names to a complex Objective-C-style method with local and external parameter names for each parameter. Parameters can provide default values to simplify function calls and can be passed as in-out parameters, which modify a passed variable once the function has completed its execution.Every function in Swift has a type, consisting of the function’s parameter types and return type. You can use this type like any other type in Swift, which makes it easy to pass functions as parameters to other functions, and to return functions from functions. Functions can also be written within other functions to encapsulate useful functionality within a nested function scope."

let resultText = stringProceed(testText)

print("\(resultText)")































