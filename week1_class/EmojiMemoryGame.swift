//
//  EmojiMemoryGame.swift
//  week1_class
//
//  Created by chika on 2024/11/17.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "😈", "🕷️", "🎃", "💀", "🕸️", "🧙‍♀️", "😱"]
    
    private static func createMemoryGame()  -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 6) {pairIndex in
            if emojis.indices.contains(pairIndex){
                return emojis[pairIndex] // pairIndex in... : $0
            } else {
                return "?"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
        
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
