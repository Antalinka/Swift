//
//  main.swift
//  CommandLineToolTest
//
//  Created by Eugene Tretiakova on 12/8/15.
//  Copyright © 2015 Eugenya. All rights reserved.
//

import Foundation

//MARK: get data from Keyboard

func input() -> String? {

    let inputStr = String(data: NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)

    return inputStr?.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

//Game logic

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

enum CharacterStyle : String {
    case Snail      = "🐌"
    case LadyBeetle = "🐞"
    case Taxi       = "🚕"
    case Ghost      = "👻"
    case Tiger      = "🐯"
}

class Room {
    var width : Int
    var height : Int
    
    init(width w : Int, height h : Int) {
        width  = w
        height = h
    }
}

class  Box {
    var position : Point
    var characterStyle  = "📦"
    
    init(position: Point) {
        self.position = position
    }
    
    func canMoveInRoom(room : Room, direction : Direction) -> Bool {
        
        let newPos = pointInDirection(direction)
        
        if (1..<room.width  ~= newPos.x) && (1..<room.height ~= newPos.y) {
            
            self.position = newPos
            return true
        } else {
            return false
        }
    }
    
    func pointInDirection(direction : Direction) -> Point {
        var newPos = Point(x: 1, y: 1)
        
        switch direction {
        case .Left   : newPos = Point(x: self.position.x - 1, y: self.position.y)
        case .Right  : newPos = Point(x: self.position.x + 1, y: self.position.y)
        case .Top    : newPos = Point(x: self.position.x, y: self.position.y - 1)
        case .Bottom : newPos = Point(x: self.position.x, y: self.position.y + 1)
        }
        
        return newPos
    }
}

class Character {
    var characterStyle : String
    var position : Point
    
    init(position p : Point, style : CharacterStyle) {
        self.position = p
        self.characterStyle = style.rawValue
    }
    
    func walkTo(direction : Direction, inRoom room : Room, box : Box) -> Point
    {
        var newPos = Point(x: 0, y: 0)
        
        switch direction {
        case .Left   : newPos = Point(x: self.position.x - 1, y: self.position.y)
        case .Right  : newPos = Point(x: self.position.x + 1, y: self.position.y)
        case .Top    : newPos = Point(x: self.position.x, y: self.position.y - 1)
        case .Bottom : newPos = Point(x: self.position.x, y: self.position.y + 1)
        }
        if isPositionCorrectInRoom(room, position: newPos) && moveBox(direction, room: room, box: box, newPos : newPos){
            self.position = newPos
        }
        return self.position
    }
    
    func moveBox (direction : Direction, room : Room, box : Box, newPos : Point) -> Bool {
        if newPos.x == box.position.x && newPos.y == box.position.y {
            
            if box.canMoveInRoom(room, direction: direction) {
                return true
            } else {
                return false
            }
        }
        return true
    }
    
    func isPositionCorrectInRoom(room : Room, position : Point) -> Bool {
        
        if (1..<room.width  ~= position.x) && (1..<room.height ~= position.y) {
            return true
        } else {
            return false
        }
    }
}

var roomLevel = Room(width: 17, height: 9)
var character = Character(position:  Point(x: roomLevel.width / 2, y: roomLevel.height / 2), style: .Snail)
var box = Box(position: Point(x: 2, y: 2))

func printRoom(room : Room, withCharacter character : Character, box : Box) {
    for i in 0...room.height {
        var row = String()
        
        for j in 0...room.width {
            let isWall = i == 0 || i == room.height || j == 0 || j == room.width
            
            if i == character.position.y && j == character.position.x {
                row += character.characterStyle
            } else if  i == box.position.y && j == box.position.x {
                row += box.characterStyle
            } else if isWall {
                row += "◼️"
            } else {
                row += "◻️"
            }
            row += " "
        }
        print(row)
    }
}

printRoom(roomLevel, withCharacter: character, box : box)

func response(inner: String?) {
    let temp = inner?.lowercaseString
    
    if temp == "w"{
        system("clear")
        character.walkTo(.Top, inRoom: roomLevel,box: box)
        printRoom(roomLevel, withCharacter: character,box : box)
    } else if temp == "s" {
        system("clear")
        character.walkTo(.Bottom, inRoom: roomLevel,box: box)
        printRoom(roomLevel, withCharacter: character,box : box)
    } else if temp == "a" {
        system("clear")
        character.walkTo(.Left, inRoom: roomLevel,box: box)
        printRoom(roomLevel, withCharacter: character,box : box)
    } else if temp == "d" {
        system("clear")
        character.walkTo(.Right, inRoom: roomLevel,box: box)
        printRoom(roomLevel, withCharacter: character,box : box)
    }
    
    if temp == "p" {
        let height = Int(arc4random_uniform(20))
        let width  = Int(arc4random_uniform(30))
        let styleInt = Int(arc4random_uniform(4))
        var style  = CharacterStyle.Snail
        
        if styleInt == 0 {
            style = .LadyBeetle
        } else if styleInt == 1 {
            style = .Taxi
        } else if styleInt == 2 {
            style = .Tiger
        } else if styleInt == 3 {
            style = .Ghost
        }
        
        roomLevel = Room(width: width + 5, height: height + 4)
        character = Character(position: Point(x: roomLevel.width / 2, y: roomLevel.height / 2), style : style)
        box = Box(position: Point(x: 2, y: 2))

        printRoom(roomLevel, withCharacter: character,box : box)
    }
    
    if temp != "q" {
        response(input())
    } else {
        print("Good luck! See you later!")
    }
}
print("a,w,s,d - move,a - new room size, q - exit")
response(input())


