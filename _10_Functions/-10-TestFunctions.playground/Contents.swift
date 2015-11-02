//DRY

func calculateMoney(inWallet w: [Int],withType type: Int? = nil) -> (total: Int,count: Int) {
    
    var sum = 0
    var count = 0
    
    for value in wallet {
        
        if (type == nil) || type != nil && value == type! {
            
            sum += value
            count++
        }
    }
    print("sum = \(sum)")
    //inWallet.append(1000)
    
    return (sum, count)
}

func calculatorMoney (inSequence range: Int...) -> Int {
    
    var sum = 0
    
    for value in range {
        sum += value
    }
    return 0
}

func sayHi() -> () {
    print("hi")
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

let (money, count) = calculateMoney(inWallet : wallet, withType: 100)

money
count

calculatorMoney(inSequence: 5,5,10,2,3,4,3,23,43)

let hi/* : ()-> ()*/ = sayHi

func sayPhrase(phrase : String) -> Int? {
    print(phrase)
    return nil
}
//sayPhrase("aaa")

let phrase/*  :String -> Int? */ = sayPhrase

phrase("bbb")

func doSomething(whatToDo:()->()){
    
}

func whatToDo() -> () -> () {
    func printSmt() {
        print("Hello world")
    }
    
    return printSmt
}

doSomething(sayHi)


let iShouldDoThis = whatToDo()
iShouldDoThis()

















