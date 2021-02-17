//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Troye on 2021/2/16.
//

import SwiftUI

class EmojiMemoryGame : ObservableObject{
    @Published private var model : MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷","😈","👽","🤡","🐷","🦄","🌝","🌚","🌟","🍎","🍊","👻","🎃","🕷","😈","👽","🤡","🐷","🦄","🌝","🌚","🌟","🍎","🍊","👻","🎃","🕷","😈","👽","🤡","🐷","🦄","🌝","🌚","🌟","🍎","🍊"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count){ pairIndex in
            emojis[pairIndex]
        }
    }

    // MARK: - Access to the Model
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }

    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card : card)
    }


    func resetGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
}




