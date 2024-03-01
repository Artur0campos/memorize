//
//  ContentView.swift
//  memorize
//
//  Created by Artur Campos on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    let mascotes: Array<String> = ["🐔","🦊","🐳","🐷"]
    var body: some View {
        HStack{
            ForEach(0..<4, id: \.self) {index in
                CardView(content: mascotes[index])
            }
        }
        .foregroundColor(.green)
        .padding()
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
