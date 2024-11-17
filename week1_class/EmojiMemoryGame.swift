//
//  EmojiMemoryGame.swift
//  week1_class
//
//  Created by chika on 2024/11/17.
//

import SwiftUI

func creatCardContent(forPairAtIndex index: Int) -> String {
    return ["👻", "😈", "🕷️", "🎃", "💀", "🕸️", "🧙‍♀️", "😱"][index]
}

class EmojiMemoryGame {
    private var model = MemoryGame(
        numberOfPairsOfCards: 4,
        cardContentFactory:{ (index: Int) -> String in
            return ["👻", "😈", "🕷️", "🎃", "💀", "🕸️", "🧙‍♀️", "😱"][index]
        }
        )
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
