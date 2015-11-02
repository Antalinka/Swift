let numbers = [1, 4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 3, 4, 1, 8]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    
    for value in array {
        
        if f(value) {
            
            filtered.append(value)
        }
    }
    
    return filtered
}
/*
func compare(i: Int)-> Bool {

    return i % 2 == 0 ? true : false
    
}*/

/*
filterArray(numbers, f: {(i: Int) -> Bool in
    return i % 2 == 0 ? true : false
})*/

// MARK: simple form
// FIXME:
// TODO: fox it:)

/*
filterArray(numbers, f: {i in
    return i % 2 == 0 ? true : false
})*/

let a = filterArray(numbers, f: {i in i % 2 == 0 ? true : false })
a
//short hand
let a1 = filterArray(numbers, f: {$0 % 3 == 0})

a1

let a3 = filterArray(numbers){$0 % 3 == 0}
a3


let array = [1,2,3]

var count = 0

/*let a4 = filterArray(numbers) { value in
    
    for include in array {
        count++
        if include == value {
            return true
        }
    }
    return false
}
a4
count

count = 0

var dict = [Int:Bool]

for value in dict {

    dict[value] = true
}

let a5 = filterArray(numbers){value in

    return  dict[value] !=nil
}
*/

var dict = [Int:Bool]()

for value in array {
    
    dict[value] = true
}

let a5 = filterArray(numbers) {value in
    count++
    return dict[value] != nil
}

count
a5







































