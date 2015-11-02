
var studentsReport = ["Ilia Ivanov" : 3, "Tanya Petrova" : 4, "Alex Orlov" : 2, "Nikolai Nikolaiev" : 5, "Igor Vladimirovich" : 3]

studentsReport["Ilia Ivanov"] = 4
studentsReport["Igor Vladimirovich"] = 5
studentsReport.updateValue(5, forKey: "Alex Orlov")

studentsReport["Ira Crutieva"] = 4
studentsReport["Fedor Fedorovich"] = 5

studentsReport[ "Tanya Petrova"] = nil
studentsReport["Nikolai Nikolaiev"] = nil

var commonScore = 0
for score in (studentsReport.values) {
    commonScore += score
}

let average = commonScore/studentsReport.count
//print("The all scores = \(commonScore), average = \(average)")

//2
let months = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "Jule" : 31, "August" : 31, "September":30,"October": 31, "November" : 30, "December" : 31]


for (key, value) in months {
    
    //print("key = \(key) value = \(value)")
}

for key in months.keys {
    
    let value = months[key]!
    //print("key = \(key) value = \(value)")
}

//3

let horizontalArray = ["a", "b", "c", "d", "e", "f", "g", "h"]
var allChecked = [String:Bool]()

for i in 1...8 {
    
    for j in horizontalArray {
        let key = j + String(i)
        
        if((horizontalArray.indexOf(j)! + i)%2 == 1)
        {
            allChecked[key] = false
        } else {
            
            allChecked[key] = true
        }
    }
}

for (key, value) in allChecked {
    
    let color = value ? "white" : "black"
    print("\(key) is \(color)")
}











