////: Playground - noun: a place where people can play
//
//import UIKit
//
////Объявляем новый тип данных
////enum Action1 {
////    case Walk
////    case Run
////    case Stop
////    case Turn
////}
////
////var action1 = Action.Run
////
////action1 = .Stop
////action1 = .Walk
//
////Ассоциативные значения
//enum Direction {
//    case Left
//    case Right
//}
//
//
//enum Action {
//    case Walk(meters: Int)
//    case Run(meters: Int, speed: Double)
//    case Stop
//    case Turn(direction: Direction)
//}
//
//
//
//var action = Action.Run(meters: 15, speed: 20.0)
//
//
////action = .Walk(meters: 10)
////action = .Stop
//
//switch action { //парсим
//case .Stop:
//    print("Stop")
////case .Walk(let meters): //байнднуть
////    print("Walk \(meters) meters")
//case .Walk(let meters) where meters < 10:
//    print("Short walk")
//case .Run(let m, let s) where m > 11: //придерживаемся порядка
//    print("Run \(m) with speed \(s)")
//case .Turn(let dir) where dir == .Left:
//    print("Turn left")
//case .Turn(let dir) where dir == .Right:
//    print("Turn right")
//default:
//    break
//}



//Вложенные (Nested Type)
//enum Action {
//    case Walk(meters: Int)
//    case Run(meters: Int, speed: Double)
//    case Stop
//    case Turn(direction: Direction)
//    
//    enum Direction {
//    case Left
//    case Right
//    }
//}

//ДЗ
//1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
    
//enum ChessFigure : String{ //Создать энум с шахматными фигруами
//    //Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции.
//    case King(color: Color, letter: String, number: Int) = "King"//Король
//    case Queen(color: Color, letter: String, number: Int) = "Queen"//Ферзь
//    case Rook(color: Color, letter: String, number: Int) = "Rook"//Ладья
//    case Knight(color: Color, letter: String, number: Int) = "Knight"//Конь
//    case Bishop(color: Color, letter: String, number: Int) = "Bishop"//Слон
//    case Pawn(color: Color, letter: String, number: Int) = "Pawn"//Пешка
//    
//    //цвет белый либо черный
//    enum Color {
//        case White
//        case Black
//    }
//    
//}
//
//var blackKing = ChessFigure.King(color: .Black, letter: "b", number: 1)
//var whiteKing = ChessFigure.King(color: .White, letter: "b", number: 3)
//var whiteQueen = ChessFigure.Queen(color: .White, letter: "b", number: 2)
//
//var figures = [blackKing, whiteKing, whiteQueen]





//2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.


//enum ChessFigure {
//    case King(color: Color, letter: String, number: Int, name: Name) //Король
//    case Queen(color: Color, letter: String, number: Int, name: Name) //Ферзь
//    case Rook(color: Color, letter: String, number: Int, name: Name) //Ладья
//    case Knight(color: Color, letter: String, number: Int, name: Name) //Конь
//    case Bishop(color: Color, letter: String, number: Int, name: Name) //Слон
//    case Pawn(color: Color, letter: String, number: Int, name: Name) //Пешка
//    
//    enum Name : String { // rawValue
//        case King = "King" //Король
//        case Queen = "Queen" //Ферзь
//        case Rook = "Rook" //Ладья
//        case Knight = "Knight" //Конь
//        case Bishop = "Bishop" //Слон
//        case Pawn = "Pawn" //Пешка
//    }
//    
//    enum Color : String { //rawValue
//        case White = "White"
//        case Black = "Black"
//    }
//    
//}
//
//var blackKing = ChessFigure.King(color: .Black, letter: "b", number: 1, name: .King)
//var whiteKing = ChessFigure.King(color: .White, letter: "b", number: 3, name: .King)
//var whiteQueen = ChessFigure.Queen(color: .White, letter: "b", number: 2, name: .Queen)
//
//var figures = [blackKing, whiteKing, whiteQueen]
//
//func printFigure(figure: ChessFigure) {
//    switch figure {
//    case let .King(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    case let .Queen(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    case let .Rook(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    case let .Knight(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    case let .Bishop(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    case let .Pawn(color, letter, number, name):print("This is the \(name.rawValue) in the position: \(letter, number) and has the color - \(color.rawValue)")
//    default:
//        break
//    }
//}
//
//for figure in figures {
//    printFigure(figure: figure)
//}


    


























