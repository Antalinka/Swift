
//1

let daysInMonths  = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for number in daysInMonths {
    //print("number of days : \(number)")
}

let monthNames = ["January", "February", "March", "April", "May", "June", "Jule", "August", "September","October", "November", "December"]

for number in daysInMonths {
    //print("in \(monthNames[daysInMonths.indexOf(number)!]) \(number) days")
}

var months = [(month: String,number: Int)]()

var index = 0

for number in daysInMonths {
    
    let month = monthNames[index]
    months.append((month, number))
    index++
}

months

for month in months {
    
   // print("in \(month.month) \(month.number) days")
}


for var i = (months.count - 1); i > 0; i-- {
    
    let month = months[i]
   // print("in \(month.month) \(month.number) days")
}


let birthday = (day: 7, month: "August")

var numberOfMonth = 0

for (index, value) in EnumerateSequence(monthNames) {
    
    if value == birthday.month {
        numberOfMonth = index
    }
}

var sum = 0
for var i = 0; i < numberOfMonth; i++ {
    sum += daysInMonths[i]
    
}
sum += birthday.day

sum



//2

let str1 = "2e"
let str2 = "5"
let str3 = "qw"
let str4 = "76"
let str5 = String()

let optionalArray : [String?] = [str1, str2, str3, str4, str5]

var result1 = 0

//optional binding

for str in optionalArray {
    
    if let temp = str {
        
        if let intTemp = Int(temp) {
        
            result1 += intTemp
        }
    }
}

result1

result1 = 0

//forced unwrapping 

for str in optionalArray {
    
    if str != nil {
        
        if Int(str!) != nil {
            
            result1 += Int(str!)!
        }
    }
}

result1

result1 = 0

for str in optionalArray {
    
    if let temp = str {
        
        result1 += Int(temp) ?? 0
    }
}

result1


//3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var alphabetArray = [String]()

for char in alphabet.characters {
    
    alphabetArray.insert(String(char), atIndex: 0)
}

print("\(alphabetArray)")


