struct Point {
    var x : Int
    var y : Int
    
    mutating func moveByX(x: Int, andY y: Int) {
        self.x += x
        self.y += y
        
       // self = Point(x: self.x + x, y: self.y + y)
    }
}

func move(var point point : Point, byX x: Int, andY y: Int) -> Point {
    
    point.x += x
    point.y += y
    
    return point
}

var p1 = Point(x: 1, y: 1)
var p2 = Point(x: 2, y: 2)

//move(p, byX: 2, andY: 4)
//move(point: p, byX: 2, andY: 4)
p1.moveByX(5, andY: 8)

p2.x
p2.y

enum Color {
    
    static func numberOfElements() -> Int {
        
        self.myPrint()
        return 2
    }
    case White
    case Black
    mutating func invert() -> Color{
        /*if self == White {
            self = Black
        }
        else
        {
            self = White
        }*/
        
        self = self == White ? Black : White
        self.myPrint()
        Color.myPrint()
        return self
    }
    func myPrint() {
        if self == White {
            print("White")
        } else {
            print("Black")
        }
    }
    
    static func myPrint() {

        print("enum")
    }
}

var c = Color.White
c
c.invert().myPrint()
Color.numberOfElements()

Color.myPrint()
c.myPrint()














