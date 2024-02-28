//
//  ContentView.swift
//  memorize
//
//  Created by Artur Campos on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack{
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
            }
            VStack{
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
                CardView(IsFaceUp: true)
            }
        }
        .foregroundColor(.gray)
        .padding()
    }
struct CardView: View {
    var IsFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if IsFaceUp{
                    RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 13).stroke(lineWidth: 7)
                Text("🐔").font(.largeTitle)
                }
            else{
                RoundedRectangle(cornerRadius: 10)
            }
            
       })
     }
  }
}

#Preview {
    ContentView()
}
