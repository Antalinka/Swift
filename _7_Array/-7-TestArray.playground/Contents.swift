let constArray : [String] = ["a", "b", "c", "d"]
constArray.count

var array = [String]()

if array.count == 0 {
    print("array is Empty")
}

if array.isEmpty {
    print("array is Empty")
}

array += constArray
array += ["e"]
array.append("f")

var array2 = array

array2[0] = "1"

array
array2

//array[1...4] = ["0"]

array.insert("-", atIndex: 3)
array.removeAtIndex(3)

//let test = [Int](count: 10, repeatedValue: 100)

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]


var sum = 0
for var i = 0; i < 9 ; i++ {
   // print("i = \(i)")
    sum += money[i]
}
sum


sum = 0
for var i = 0; i < money.count ; i++ {
   // print("i = \(i)")
    sum += money[i]
}
sum

sum = 0

for i in 0..<money.count {
    //print("index i = \(i) value = \(money[i])")
    sum += money[i]
}

sum

var index = 0
for value in money {
    
    //print("index = \(index) value = \(value)")
    sum += value
    index++
}


for (index, value) in EnumerateSequence(money) {
    print("index = \(index) value = \(value)")
}
























