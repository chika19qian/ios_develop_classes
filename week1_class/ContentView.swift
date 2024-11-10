//
//  ContentView.swift
//  week1_class
//
//  Created by chika on 2024/11/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
        .imageScale(.small)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        
        ZStack (content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    
            }
        })
    }
}



#Preview {
    ContentView()
}
