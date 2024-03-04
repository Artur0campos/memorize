//
//  ContentView.swift
//  memorize
//
//  Created by Artur Campos on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    let mascotes: Array<String> = ["🐔","🦊","🐳","🐷","🦁", "🐶", "🎅🏻", "🦸🏻‍♂️",  "🐮", "🐲"]
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack{
            cards
            cardCountAdjusters
        }
        .padding()
    }
    
    var cardCountAdjusters: some View{
        HStack{
            cardAdd
            Spacer()
            cardRemover
        }
    }
    
    var cards: some View{
        HStack{
            ForEach(0..<cardCount, id: \.self) {index in
                CardView(content: mascotes[index])
                }.foregroundColor(.green)
            }
    }
    
    var cardAdd: some View{
        Button(action:{
            if cardCount < mascotes.count {
                cardCount += 1
            }
        }, label: {
            Image(systemName:"rectangle.stack.fill.badge.plus")
        }).imageScale(.large).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
    
    var cardRemover: some View{
        Button(action:{
            if cardCount > 1{
                cardCount -= 1
            }
        }, label: {
            Image(systemName:"rectangle.stack.badge.minus.fill")
        }).imageScale(.large).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

    }
struct CardView: View {
    let content: String
    @State var IsFaceUp = false
    var body: some View {
        ZStack{
            let card = RoundedRectangle(cornerRadius: 10)
            if IsFaceUp{
                card.foregroundColor(.white)
                card.stroke(lineWidth: 7)
                Text(content).font(.largeTitle)
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
