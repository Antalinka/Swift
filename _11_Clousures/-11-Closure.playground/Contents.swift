//1


func counter(finish:() -> ()){
    
    for var i = 0; i < 10; i++ {
        print("\(i)")
    }
    
    finish()
}



counter{ print("It's all")}

//2

let testArray = [1, 3, 5, 19, 10, 3, 4, 20, 384, 85, 2, 4, 4]


var sortedArray = testArray.sort { $0 > $1}

sortedArray


sortedArray = testArray.sort ({(first, second) -> Bool in
 return second > first })

//3

func chooseElement(arr: [Int],b: (Int?,Int) -> Bool) -> Int {
    
    var temp: Int?
    
    for value in arr {
        
        if (b(temp, value)) {
            temp = value
        }
    }
    
    return temp ?? 0
}

let min = chooseElement(testArray) { (value1, value2) -> Bool in
    
    if let temp = value1 {
        
        if temp > value2
        {
            return true
        }
    } else {
        return true
    }
    return false
}

min

let max = chooseElement(testArray) { (value1, value2) -> Bool in
    
    if let temp = value1 {
        
        if temp < value2
        {
            return true
        }
    } else {
        return true
    }
    return false
}

max

//4

let testSrt = "The string retrieved from the digitNames dictionary is added to the front of output, effectively building a string version of the number in reverse. (The expression number % 10 gives a value of 6 for 16, 8 for 58, and 0 for 510.)"

//let testSrt = "a"
var arrayStr = [Character]()

for a in testSrt.characters {
    arrayStr.append(a)
}

// "a","e","i","o","u"
let vowelArr = ["a","e","i","o","u"]
let vowelDict = ["a" : true,"e" : true, "i" : true,"o" : true, "u" : true]
let constantDict = ["b": true,"c": true,"d" : true,"f" : true,"g" : true,"h" : true,"j" : true,"k" : true,"l" : true,"m" : true,"n" : true,"p" : true,"r" : true,"q" : true,"s" : true,"t" : true,"v" : true,"w" : true,"x" : true,"y" : true,"z" : true]
let digitDict = ["0": true,"1": true,"2" : true,"3" : true,"4" : true,"5" : true,"6" : true,"7" : true,"8" : true,"9" : true]


/*let sortedArr = arrayStr.sort { (firstValue, secondValue) -> Bool in

    switch (String(firstValue), String(secondValue)){

    case(let a, let b) where vowelDict[a] != nil && vowelDict[b] != nil:
        
        let isFirstletter = vowelArr.indexOf(a) > vowelArr.indexOf(b) ? true : false
        return isFirstletter
        
    case(let a,_) where vowelDict[a] != nil :
        return true
        
    case(let a,let b) where (constantDict[a] != nil && vowelDict[b] == nil):
        return true
        
    case(let a,let b) where (digitDict[a] != nil && vowelDict[b] == nil && constantDict[b] == nil):
        return true
        
    default: false

    }
    return false
}

var resultStr = String()

for a in sortedArr {
    resultStr.append(a)
}
*/

//5

var arayStr1 = [String]()

for a in testSrt.characters {
    arayStr1.append(String(a))
}

func sortLetters(arr: [String],b: (String?,String) -> Bool) -> String {
    
    var temp: String?
    
    for value in arr {
        
        if (b(temp, value)) {
            temp = value
        }
    }
    
    return temp ?? ""
}

arayStr1
let result = sortLetters(arayStr1) {(value1, value2) -> Bool in
    
    if let temp = value1 {
        
        if temp < value2
        {
            return true
        }
    } else {
        return true
    }
    return false
}

result


















