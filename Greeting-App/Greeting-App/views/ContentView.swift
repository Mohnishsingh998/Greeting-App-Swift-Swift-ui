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
            Background_view()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Spacer()
                Title_view()
                Spacer()
                Message_view()
                Spacer()
                Spacer()
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
