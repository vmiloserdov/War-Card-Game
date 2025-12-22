//
//  ContentView.swift
//  War Card Game
//
//  Created by Vlad Miloserdov on 12/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain")
            
            VStack() {
                Spacer()
                // Logo
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                Spacer()
                
                // Cards
                HStack (){
                    Spacer()
                    Image("back")
                    Spacer()
                    Image("back")
                    Spacer()
                }
                Spacer()

                // Button
                Image("button")
                
                Spacer()
                
                // Scores
                HStack (){
                    Spacer()
                    VStack {
                        Text("Player")
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("AI")
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        Text("0")
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
}

#Preview {
    ContentView()
}
