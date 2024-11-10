//
//  ContentView.swift
//  week1_class
//
//  Created by chika on 2024/11/2.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "😈", "🕷️", "🎃", "🎃"] //Array<String>
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .padding()
        .foregroundColor(.orange)
        .imageScale(.small)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture{
            isFaceUp.toggle()
        }
    }
}



#Preview {
    ContentView()
}
