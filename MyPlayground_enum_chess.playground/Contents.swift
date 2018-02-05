//: Playground - noun: a place where people can play

import UIKit

//3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
enum Figure {

    enum Name: String { //шахматная фигура
        case King = "♚"
        case Queen = "♛"
        case Bishop = "♝"
        case Knight = "♞"
        case Rook = "♜"
        case Pawn = "♟"
    }
    
    enum Color : String {
        case White = "⬜️"
        case Black = "⬛️"
    }
    
    enum Row : String {
        case A = "A"
        case B = "B"
        case C = "C"
        case D = "D"
        case E = "E"
        case F = "F"
        case G = "G"
        case H = "H"
    }
    
    enum Line : Int {
        case One = 1, Two, Three, Four, Five, Six, Seven, Eight
    }
}

typealias Chess = (name: Figure.Name, row: Figure.Row, line: Figure.Line, color: Figure.Color)

let whiteKing = Chess(name: .King, row: .A, line: .One, color: .White)
let blackBishop = Chess(name: .Bishop, row: .B, line: .Three, .Black)
let blackQueen = Chess(name: .Queen, row: .E, line: .Five, color: .Black)

var figureArray = [whiteKing, blackBishop, blackQueen]

for figure in figureArray {
    print("figure: \(figure.name.rawValue), color: \(figure.color.rawValue), position: \(figure.row.rawValue), line \(figure.line.rawValue)")
}
let abc = "ABCDEFGH"
var chessmanDict = [String : Chess]()
var chessBoardArray = [[String]]()

func returnRowNumber(rowChar: String) -> Int {
    let index = find(abc, Character(rowChar))
    
    return distance(abc.startIndex, index!)
}


let blackCell = Figure.Color.Black.rawValue
let whiteCell = Figure.Color.White.rawValue

func printChessBoard(figuresDict: [String:Chess]) { // функция должна вывести доску

    var chessBoardArray = [String]()
    
    for letter in 1...8 {
        var lineArray = [String]()
        for number in 1...8 {
            cell += (letter + number) % 2 != 0 ? [blackCell] : [whiteCell]
        }
        chessBoardArray += lineArray
    }
    
    //Positioning
    for chessman in figuresDict.values {
        var chess : String
        
        switch chessman {
        case (.King, _, _, let color):
            chess = color == blackCell ? .King.rawValue : .King.rawValue
        case (.Queen, _, _, let color):
            chess = color == blackCell ? .Queen.rawValue : .Queen.rawValue
        default:
            break
        }
        
        let x = returnRowNumber(chessman.row.rawValue)
        let y = chessBoardArray.count - chessman.line.rawValue
        
        chessBoardArray[y][x] = chess
    }
    
    //Print ChessBoard
    var y = 0
    print(" A B C D E F G H")
    
    for line in chessBoardArray {
        print(String(8 - y) + " ")
        
        for cell in line {
            print(cell + " ")
        }
        print("8 - (y += 1)")
    }
    print(" A B C D E F G H")
    
}
printChessBoard()








