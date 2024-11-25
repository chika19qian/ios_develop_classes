//
//  week1_classApp.swift
//  week1_class
//
//  Created by chika on 2024/11/2.
//

import SwiftUI

@main
struct week1_classApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
