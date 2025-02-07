//
//  DeckOfCards.swift
//  CardGames
//
//  Created by Jonathan Cesari on 2/7/25.
//

/*
 Basically, this is going to manage the cards in play in our game. Cards are not removed if they're assigned to a user's deck. The card class includes a Player variable that manages if it's assigned to a Player or not (Nil). If a card in this deck is Nil then it is available to be used.
 */
 

class DeckOfCards {
    static let DealerCards = DeckOfCards()
    
    var deck: [Card] = []
    
    private init() {
        generateDeck()
    }
    
    private var nextCard: Card? = nil
    
    private func generateDeck() {
        for ranks in 1...13 {
            for suites in 1...4 {
                if case let (nextRank?, nextSuite?) = (Rank(rawValue: ranks), Suite(rawValue: suites)) {
                    nextCard = Card(rank: nextRank, suite: nextSuite, player: nil)
                    self.deck.append(nextCard!)
                } else {
                    print("Deck failed to initiate properly!")
                }
            }
        }
        var randomShuffle = SystemRandomNumberGenerator()
        let randomNumber = randomShuffle.next(upperBound: UInt(100))
        
        for _ in 1...randomNumber {
            self.deck.shuffle()
        }
    }
    
    public func peakDeck() {
        for cards in self.deck {
            print(cards.nameOfCard())
        }
    }
    
    public func getDistributedCards() {
        for card in self.deck {
            if let player = card.player {
                print("Player \(player.name!) has: \(card.nameOfCard())")
            }
        }
    }
    
    public func getCardsInDeck() -> Int {
        var inMyDeck = 0
        var givenToPlayers = 0
        for card in DeckOfCards.DealerCards.deck {
            if card.player != nil {
                givenToPlayers += 1
            } else {
                inMyDeck += 1
            }
        }
        return inMyDeck
    }
}
