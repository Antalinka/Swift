/*if age == 21 {
    
} else if age == 22 {
    
} else {
    
}*/
/*hi: for _ in 0...1000 {
    
    for i in 0..<20 {
        
        if (i < 15) {
            //continue
        }
        
        if i == 10 {
            break hi
        }
        //print("\(i)")
    }
    
}*/

var age = 67
var name = "Eugene"

switch age {
    case 0...16:
        print("школота");
        print("qwe")
        
    fallthrough
    case 17...21: print("студент")
    case 22...50:break
    case 50:
    print("не сработало")
    case 51, 56, 57, 60:
    print("урра!")
    
    default: break
    
}

switch name {
    
case "Eugene" where age < 60:
    print("Hi buddy!")
case "Eugene" where age >= 60:
    print("I don't know")

default:
    break
}
/*var optional : Int? = 5

if let a = optional {
    print("\(a) != nil")
}*/

let tuple = (name, age)

switch tuple {
    case ("Eugene", 60):print("Hi Eugene 60")
        
    case(_, 51):print("Hi unknown")
        
    //case ("Eugene", _):print("Hi Eugene")
    case(_, let number) where number >= 65 && number <= 70: print("Hi old man")
    
    
    default: break
    
}

//pattern

let point = (5,-3)

switch point {
    
case let (x,y) where x == y:
    print("x = y = \(x)")
case let (x,y) where x == -y:
    print("x = -y")
case let (_, y) where y < 0 :
    print("y < 0")
    
default:break
    
}

let array : [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[0] {
case _ as Int:print("Int")
case _ as Float:print("Float")
case _ as Double:print("Double")
    
default: break
   
}


