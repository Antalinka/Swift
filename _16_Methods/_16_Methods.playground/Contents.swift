//: Playground - noun: a place where people can play

import UIKit

class Room {
    var width : Int
    var height : Int
    
    init(width w : Int, height h : Int) {
        width  = w
        height = h
    }
}

struct Point {
    var x : Int
    var y : Int
}
enum Direction {
    
    case Left
    case Right
    case Top
    case Bottom
}

class Character {
    var position : Point
    
    init(position p : Point) {
        self.position = p
    }
    
    func walkTo(direction : Direction, inRoome room : Room) -> Point
    {
        var newPos = Point(x: 0, y: 0)
        
        switch direction {
        case .Left   : newPos = Point(x: self.position.x - 1, y: self.position.y)
        case .Right  : newPos = Point(x: self.position.x + 1, y: self.position.y)
        case .Top    : newPos = Point(x: self.position.x, y: self.position.y - 1)
        case .Bottom : newPos = Point(x: self.position.x, y: self.position.y + 1)
        }
        if isPositionCorrectInRoom(room, position: newPos)
        {
            self.position = newPos
        }
        return self.position
    }
    
    func isPositionCorrectInRoom(room : Room, position : Point) -> Bool {
        
        if (1..<room.width ~= position.x) && (1..<room.height ~= position.y) {
            return true
        }
        else {
            return false
        }
    }
}

func printRoom(room : Room, withCharacter character : Character)
{
    for i in 0...room.height
    {
        var row = String()
        
        for j in 0...room.width
        {
            let isWall = i == 0 || i == room.height || j == 0 || j == room.width
            
            if i == character.position.y && j == character.position.x
            {
                row += "🐌"
            } else if isWall
            {
                row += "◼️"
            } else {
                row += "◻️"
            }
            row += " "
        }
        print(row)
    }
    
    
}

let character1 = Character(position: Point(x: 1, y: 2))
let roomLevel1 = Room(width: 5, height: 5)


printRoom(roomLevel1, withCharacter: character1)

character1.walkTo(.Left, inRoome: roomLevel1)
printRoom(roomLevel1, withCharacter: character1)

character1.walkTo(.Right, inRoome: roomLevel1)
printRoom(roomLevel1, withCharacter: character1)

