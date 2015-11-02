//1

enum Color : String {
    case White = "White"
    case Black = "Black"
}

enum Name : String {
    case King   = "King"
    case Queen  = "Queen"
    case Rook   = "Rook"
    case Bishop = "Bishop"
    case Knight = "Knight"
    case Pawn   = "Pawn"
}

enum ChessType : String {
    case WhiteQueen  = "\u{2655}"
    case WhiteKing   = "\u{2654}"
    case WhiteKnight = "\u{2658}"
    
    case BlackQueen  = "\u{265B}"
    case BlackKing   = "\u{265A}"
    case BlackPawn   = "\u{265F}"
}

enum Figures  {
    case King(letter: String, number: Int,color: Color, name: Name, type: ChessType)
    case Queen(letter: String, number: Int,color: Color, name: Name, type: ChessType)
    case Rook(letter: String, number: Int,color: Color, name: Name, type: ChessType)
    case Bishop(letter: String, number: Int,color: Color, name: Name, type: ChessType)
    case Knight(letter: String, number: Int,color: Color, name: Name, type: ChessType)
    case Pawn(letter: String, number: Int,color: Color, name: Name, type: ChessType)
}

let whiteQueen  = Figures.Queen(letter: "b", number: 4, color: .White, name : .Queen, type: .WhiteQueen)
let whiteKing   = Figures.King(letter: "f", number: 1, color: .White, name: .King, type: .WhiteKing)
let whiteKnight = Figures.Knight(letter: "g", number: 5, color: .White, name: .Knight, type: .WhiteKnight)

let blackKing   = Figures.King(letter: "h", number: 2, color: .Black, name: .King, type: .BlackKing)
let blackQueen  = Figures.Queen(letter: "g", number: 3, color: .Black, name: .Queen, type: .BlackQueen)
let blackPawn   = Figures.Pawn(letter: "g", number: 4, color: .Black, name: .Pawn, type: .BlackPawn)

var chessSet = [whiteKing, whiteQueen, whiteKnight,blackKing, blackQueen, blackPawn]


//2

func dataChess(figure: Figures) -> (position: String,name: String,type: ChessType, color: String) {

    switch figure {
        
    case .King(let l, let n, let c, let name,let t):
        return (l + String(n),name.rawValue,t,c.rawValue)

    case .Queen(let l, let n, let c, let name, let t):
        return (l + String(n),name.rawValue,t,c.rawValue)

    case .Rook(let l, let n, let c, let name, let t):
        return (l + String(n),name.rawValue,t,c.rawValue)

    case .Bishop(let l, let n, let c, let name, let t):
        return (l + String(n),name.rawValue,t,c.rawValue)

    case .Knight(let l, let n, let c, let name, let t):
        return (l + String(n),name.rawValue,t,c.rawValue)

    case .Pawn(let l, let n, let c, let name, let t):
        return (l + String(n),name.rawValue,t,c.rawValue)
    }
}


for figure in chessSet {
    let description = dataChess(figure)
    print("\(description)")
    
}

//3

let allLetters = ["a", "b", "c", "d", "e", "f", "g", "h"];


func printChess(chessSet: [Figures]) -> () {
    
    var chessDict = [String : ChessType]()
    
    for figure in chessSet {
        let tuple = dataChess(figure)
        chessDict[tuple.position] = tuple.type
    }
    
    for var i = 8; i > 0; i--
    {
        var row = String(i) + " "

        for letter in allLetters {
            
            let currentPos = letter + String(i)
            
            if let temp = chessDict[currentPos] {
                
                row += temp.rawValue
            } else if(i % 2) == (allLetters.indexOf(letter)! % 2) {
                
                row += "\u{25A0}"
            } else {
                row += "\u{25A1}"
            }
            row += " "
        }
        print(row)
    }
    
    print("  a b c d e f g h")
   
}

//4 there aren't checking for letter

func createTuple( letter: String, number: Int,name: String,type: ChessType, color: String) -> Figures {
    
    switch name {
    case "King":
        return Figures.King(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    case "Queen":
        return Figures.Queen(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    case "Rook":
        return Figures.Rook(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    case "Bishop":
        return Figures.Bishop(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    case "Knight":
        return Figures.Knight(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    case "Pawn":
        return Figures.Pawn(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)

    default:
        return Figures.Pawn(letter: letter, number: number, color: Color(rawValue: color)!, name: Name(rawValue: name)!, type: type)
    }
}

func isMoveCorrect(type: Name, fromLetter: String, fromNumber: Int, toLetter: String, toNumber: Int) -> Bool {
    
    
    for figure in chessSet {
        
        let tuple = dataChess(figure)
        
        if tuple.position == toLetter + String(toNumber) {
            
            //this place is busy
            return false
        }
    }
    
    switch type {
    case .Queen where (fromLetter == toLetter || fromNumber == toNumber || isDiagonalOrder(fromLetter, fromNumber: fromNumber, toLetter: toLetter, toNumber: toNumber)):
        return true
    case .Rook where (fromLetter == toLetter || fromNumber == toNumber):
        return true
    case .Bishop where (isDiagonalOrder(fromLetter, fromNumber: fromNumber, toLetter: toLetter, toNumber: toNumber)):
        return true
    case .Knight where isKnightStyle(fromLetter, fromNumber: fromNumber, toLetter: toLetter, toNumber: toNumber):
        return true
    case .Pawn where isPawnStyle(fromLetter, fromNumber: toNumber, toLetter: toLetter, toNumber: toNumber):
        return true
    case .King where isKingStyle(fromLetter, fromNumber: fromNumber, toLetter: toLetter, toNumber: toNumber):
        return true
        
    default: break
    }
    
    return false
}

func isDiagonalOrder(fromLetter: String, fromNumber: Int, toLetter: String, toNumber: Int) -> Bool {
    
    if abs(allLetters.indexOf(fromLetter)! - allLetters.indexOf(toLetter)!) == abs(fromNumber - toNumber) {
        return true
    }
    return false
}

func isKnightStyle(fromLetter: String, fromNumber: Int, toLetter: String, toNumber: Int) -> Bool {
    
    if abs(allLetters.indexOf(fromLetter)! - allLetters.indexOf(toLetter)!) == 2 && abs(fromNumber - toNumber) == 1 {
        return true
    } else if  abs(allLetters.indexOf(fromLetter)! - allLetters.indexOf(toLetter)!) == 1 && abs(fromNumber - toNumber) == 2 {
        return true
    }
    return false
}

func isPawnStyle(fromLetter: String, fromNumber: Int, toLetter: String, toNumber: Int) -> Bool {
    
    if allLetters.indexOf(fromLetter)! - allLetters.indexOf(toLetter)! == 1 {
        return true
    }
    return false
}


func isKingStyle(fromLetter: String, fromNumber: Int, toLetter: String, toNumber: Int) -> Bool {
    
    if abs(allLetters.indexOf(fromLetter)! - allLetters.indexOf(toLetter)!) == 1 {
        return true
    }
    return false
}

func moveTo(inout figure : Figures, letter: String, digit: Int) -> () {
    
    let tuple = dataChess(figure)
    tuple.position
    
    let firstLetter = String(tuple.position[tuple.position.startIndex.advancedBy(0)])
    let lastNumber  = Int(String(tuple.position[tuple.position.startIndex.advancedBy(1)]))
    
    if isMoveCorrect(Name(rawValue: tuple.name)!, fromLetter: firstLetter, fromNumber: lastNumber!, toLetter: letter, toNumber: digit) {
        
        print("\(tuple.color) \(tuple.name) moves from \(tuple.position) to \(letter)\(digit)")
        figure = createTuple(letter, number: digit, name: tuple.name, type: tuple.type, color: tuple.color)
        printChess(chessSet)
    } else {
        print("Impossible move for \(tuple.name) from \(tuple.position) to \(letter)\(digit)")
    }

}

printChess(chessSet)
moveTo(&chessSet[2], letter: "f", digit: 3)
moveTo(&chessSet[0], letter: "a", digit: 4)
moveTo(&chessSet[1], letter: "a", digit: 4)
moveTo(&chessSet[3], letter: "e", digit: 8)
moveTo(&chessSet[3], letter: "g", digit: 2)






