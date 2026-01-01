//
//  ContentView.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [.cyan.opacity(0.3),.accentColor,.black,.red],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.black)
                Text("Greeting")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(.orange)
                    .shadow(
                        color: .orange,
                        radius: 5,
                        x: 5,
                        y: 5
                    )
                    .padding()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
