

let MaxNameLength = 10

class Human {
    var name: String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife : String! = "This is a story of my entire life..."
    
    class var maxAge : Int {
        return 100
    }
    
    
    var age: Int {
        didSet {
            if age > 100 {
                age = oldValue
            }
        }
    }
    init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    
    static let enumDescription = "Direction in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var IsVertical : Bool {
        return self == .Top || self == .Bottom
    }
    var IsHorizontal : Bool {
        return !IsVertical
    }
}

struct Cat {
    var name : String {
        didSet {
            if name.characters.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    static let maxAge = 20
    static var totalCats = 0

    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name : String, age : Int ){
        self.name = name
        self.age = age
        
        Cat.totalCats++
        }
}

let human = Human(name: "Peter", age: 40)
human.age = 50
human.storyOfMyLife

var cat = Cat(name: "Whiter", age: 10)
var cat1 = Cat(name: "Whiter", age: 10)
var cat2 = Cat(name: "Whiter", age: 10)

Cat.totalCats

human.age = 1000
cat.age = 50

Direction.enumDescription


//struct тип может иметь stored property в классе только экземпляр может




let d = Direction.Right
d.IsVertical
d.IsHorizontal


cat.name = "12345678901234412323"
cat.name







