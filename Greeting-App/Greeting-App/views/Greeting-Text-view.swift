//
//  Greeting-Text-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 03/01/26.
//

import SwiftUI
/// for landscape
struct Greeting_Text_view: View {
    @Binding var subtitle : LocalizedStringKey
    let subtitles: [LocalizedStringKey] = [
        "Welcome to iOS Development",
        "Build Apps the Apple Way",
        "Learn Swift from Scratch",
        "Master SwiftUI Interfaces",
        "Create Stunning iOS Apps",
        "From Idea to App Store",
        "Develop Fast, Modern Apps",
        "Your Journey into iOS Starts Here",
        "Code Clean. Design Smart.",
        "Powering Apps with Swift",
        "Build Once. Run Smoothly.",
        "Turn Ideas into iOS Apps",
        "Craft Elegant User Experiences",
        "Modern iOS Development Made Simple",
        "Think iOS. Think Swift."
    ]
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 0,
        ){
            Text("Greeting-App")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.green)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(.green)
        }
        .onTapGesture {
            subtitle = subtitles
                .randomElement() ?? LocalizedStringKey(
                    "Think iOS. Think Swift."
                )
        }
    }
}

#Preview {
    Greeting_Text_view(subtitle: .constant("Welcome to iOS Development"))
}
