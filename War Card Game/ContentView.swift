//
//  ContentView.swift
//  War Card Game
//
//  Created by Vlad Miloserdov on 12/21/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            
            VStack() {
                Spacer()
                // Logo
//                Image("logo")
//                    .resizable()
//                    .frame(width: 200, height: 200)
                
                Button{
                    resetGame()
                } label:{
                    Image("logo")
                }
                
                
                Spacer()
                
                // Cards
                HStack (){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()

                // Button
                // Image("button") commenting out for now
                Button{
                    dealCards()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                // Scores
                HStack (){
                    Spacer()
                    VStack {
                        Text("Player")
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("AI")
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                
                
                Spacer()
                
            }
            .padding()
            
            
        }

    }
    
    func dealCards(){
        
        var playerValue = Int.random(in: 2...14)
        var cpuValue = Int.random(in: 2...14)

        playerCard = "card\(playerValue)"
        cpuCard = "card\(cpuValue)"
        
        if (playerCard > cpuCard){
            playerScore += 1
        }
        if (cpuCard > playerCard){
            cpuScore += 1
        }
        
        
        
        
        
    }
    
    func resetGame(){
        playerCard = "back"
        cpuCard = "back"
        
        playerScore = 0
        cpuScore = 0
    }
}

#Preview {
    ContentView()
}
