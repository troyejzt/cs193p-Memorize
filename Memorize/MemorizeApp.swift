//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Troye on 2021/2/16.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
