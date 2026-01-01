//
//  Textview.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct Textview: View {
    
    let text : String
    @State var color : Color
    
    let colors : [Color] = [
        .red,
        .yellow,
        .blue,
        .mint,
        .gray,
        .green,
        Color(red: 1, green: 23/34, blue: 123/125),
        Color(red: 1, green: 34/35, blue: 23/24),
        Color(red: 0, green: 23/24, blue: 34/35),
        Color(red: 0, green: 123/126, blue: 23/34),
    ]
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.3))
            .cornerRadius(20)
            .shadow(
                color: .primary,
                radius: 5,
                x: 10,
                y: 10
            )
            .onTapGesture {
                withAnimation{
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    Textview(text :"Hello world!" , color : .green )
}
