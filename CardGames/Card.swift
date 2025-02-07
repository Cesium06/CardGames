//
//  Card.swift
//  CardGames
//
//  Created by Jonathan Cesari on 2/7/25.
//

// Enums for helping establish value and suite of our cards.
enum Suite: Int{
    case hearts = 1
    case diamonds, spades, clubs
    
    func simpleDescription()->String{
        switch self{
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .spades:
            return "spades"
        case .clubs:
            return "clubs"
        }
    }
}

enum Rank: Int{
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String{
        switch self{
        case .ace:
            return "ace"
        case .two:
            return "two"
        case .three:
            return "three"
        case .four:
            return "four"
        case .five:
            return "five"
        case .six:
            return "six"
        case .seven:
            return "seven"
        case .eight:
            return "eight"
        case .nine:
            return "nine"
        case .ten:
            return "ten"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        }
    }
}

// Represents our card.
struct Card {
    let rank:Rank
    let suite:Suite
    var player:Player? = nil
    
    func nameOfCard() -> String{
        return "\(rank.simpleDescription()) of \(suite.simpleDescription())"
    }
    
//    func setPlayer (_ player:Player){
//        self.player = player
//    }
}
