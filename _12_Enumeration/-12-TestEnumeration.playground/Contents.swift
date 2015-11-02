    enum Direction : String {
        case Left = "Left!"
        case Right = "Right!"
    }

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction : Direction)

}

var action = Action.Run(meters: 20, speed: 15.0)

//action = .Stop
//action = .Walk(meters: 200)

//action = .Turn(direction: .Right)
var directionA = Direction(rawValue: "Right!")!
action = .Turn(direction:directionA)
    
switch action {
case .Stop : print("Stop")
//case .Walk(let meters): print("Walk \(meters)meters")
case .Walk(let meters) where meters < 100: print("shot walk")
case .Walk(let meters): print("Long walk")
case .Run(let m, let s): print("Run \(m) meters with speed \(s)")
case .Turn(let dir) where dir == .Left: print("Turn left")
case .Turn(let dir) where dir == .Right: print("Turn right")
    
default: break
}


print(Direction.Left.rawValue)


































