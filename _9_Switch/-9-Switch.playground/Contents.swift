//1

var str = "This example calculates the value of one number to the power of another (in this case, 3 to the power of 10). It multiplies a starting value of 1 (that is, 3 to the power of 0) by 3, ten times, using a closed range that starts with 1 and ends with 10. This calculation doesn’t need to know the individual counter values each time through the loop—it simply needs to execute the loop the correct number of times. The underscore character (_) used in place of a loop variable causes the individual values to be ignored and does not provide access to the current value during each iteration of the loop."

var vowels = 0
var consonants = 0
var digitals = 0
var otherSymbols = 0

str.lowercaseString

for a in str.characters {
    
    switch a {
    case "a","e","i","o","u":
        vowels++
    case "b","c","d","f","g","h","j","k","l","m","n","p","r","q","s","t","v","w","x","y","z":
        consonants++
    case "1","2","3","4","5","6","7","8","9","0":
        digitals++
        
    default:
        otherSymbols++
    }
    
}

print("Sentance consist of:\n \(vowels) vowels,\n \(consonants) consonants,\n \(digitals) digitals,\n \(otherSymbols) symbols.\n All characters \(str.characters.count)")

//2

let age = 121

switch age {
case 0...3:
    print("baby")
case 3...7:
    print("child")
case 7...15:
    print("pupil")
case 15...21:
    print("student")
case 21...30:
    print("young man")
case 30...60:
    print("middle age")
case 60...80:
    print("old man")
case 80...120:
    print("very old man")
default:
    print("alien")
}

//3


//let student1 = ("Алекс", "Александр","Владимирович" ,"Петров")
let student1 = ("Вова", "Владимир","Дмитриевич" ,"Петров")

switch student1 {
    
    case let (name,_,_,_) where name.hasPrefix("А") || name.hasPrefix("О") :
        print("Hi, \(student1.1)")
    
    case let (_,_,secondName,_) where secondName.hasPrefix("Д") || secondName.hasPrefix("В") :
        print("Hi, \(student1.0) \(student1.2)")
        
    default:
        print("Hi, \(student1.1)")
    
}

//4

var allPoints = [String]()
let allLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

for i in 1...10
{
    for char in allLetters {
        let point = char + String(i)
        allPoints.append(point)
        print("\(point)")
    }
}

let currentPoint = ("",4)

switch currentPoint{
    
case let ("a",y) where y < 5:
    print("Hit!")
case ("a",6):
    print("Kill!")
case ("a",8):
    print("Kill!")
default: print("None")
}

let point = (2,4)
switch point {
case (1...2, 2...5):
    print("Hit")
default: break
}
