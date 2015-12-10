
class Human  {
    var name : String
    var age : Int {
        didSet {
            if age > maxAge {
                age = oldValue
            }
        }
    }
    lazy var storyOfMyLife = "This is story of my entire life..."
    var maxAge : Int {
        return 100
    }
    
    
    init(name : String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

struct Cat {
    
    static let maxAge    = 20
    static var totalCats = 0
    
    var name : String
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    init(name: String, age: Int) {
        self.name = name
        self.age  = age
        
        Cat.totalCats++
    }
}

let human = Human(name: "Peter", age: 40)
var cat = Cat(name: "White", age : 20)

human.age = 1000
cat.age   = 50
print(human)

Cat.totalCats

let cat1 = Cat(name: "White", age : 20)
let cat2 = Cat(name: "White", age : 20)

Cat.totalCats

enum Direction {
    static let enumDescription = "Direction in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
    var isHorizontal : Bool {
        return !isVertical
    }
}

let d = Direction.Right

d.isHorizontal
d.isVertical

Direction.enumDescription



















