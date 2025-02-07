//
//  Player.swift
//  CardGames
//
//  Created by Jonathan Cesari on 2/7/25.
//

import Foundation

class Player {
    private var playerDeck: [Card] = []
    private let MAXCARDS: Int = 7
    public var name: String? = nil
    
    init(name: String ) {
        self.name = name
        fillHand()
    }
    
    private func fillHand() {
        while playerDeck.count < MAXCARDS,
              let _ = DeckOfCards.DealerCards.deck.firstIndex(where: { $0.player == nil }) {
            takeCard()
        }
    }
    
    public func peakPlayerHand() {
        for x in self.playerDeck {
            print(x.nameOfCard())
        }
    }
    
    public func takeCard() {
        var cardToPlayer: Card? = nil
        
        if let index = DeckOfCards.DealerCards.deck.firstIndex(where: { $0.player == nil }) {
            DeckOfCards.DealerCards.deck[index].player = self
            let modifiedCard = DeckOfCards.DealerCards.deck[index]
            cardToPlayer = modifiedCard
            playerDeck.append(cardToPlayer!)
        } else {
            print("No cards with players found.")
            cardToPlayer = nil
        }
    }
    
    // Remove ownership of the card here... and that sets it back up for pulling.
    public func returnCard(){
        print("Hello World")
    }
    
}
