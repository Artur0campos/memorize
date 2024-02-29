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
            CardView(IsFaceUp: false)
            CardView(IsFaceUp: false)
            CardView(IsFaceUp: false)
        }
        .foregroundColor(.gray)
        .padding()
    }
struct CardView: View {
    @State var IsFaceUp = false
    
    var body: some View {
        ZStack{
            let card = RoundedRectangle(cornerRadius: 10)
            if IsFaceUp{
                card.foregroundColor(.white)
                card.stroke(lineWidth: 7)
                Text("🐔").font(.largeTitle)
                }
            else{
                card.fill()
            }
            
        }.onTapGesture {
            IsFaceUp.toggle()
            // pode ser escrito dessa outra forma: IsFaceUp =  !IsFaceUp
        }
     }
  }
}

#Preview {
    ContentView()
}
