//
//  Title-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct Title_view: View {
    var Diameter = 70.0
    var LineWidth = 15.0
    @State private var isRotated : Bool = false
    var angle : Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradiant : AngularGradient {
        AngularGradient(
            colors: [.pink,.purple,.yellow,.orange,.green,.red,.blue,.accentColor],
            center: .center,
            angle: .zero
        )
    }
    
    @State private var subtitle : LocalizedStringKey = "Welcome to IOS Development"
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
        HStack {
            VStack(
                alignment: .leading,
                spacing: 0,
            ){
                Text("Greeting-App")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundStyle(.white)
            }
            .onTapGesture {
                    subtitle = subtitles.randomElement() ?? LocalizedStringKey("Think iOS. Think Swift.")
            }
            Spacer()
            Circle()
                .strokeBorder(
                    angularGradiant,
                    lineWidth: LineWidth
                )
                .frame(
                    width: Diameter,
                    height: Diameter,
                )
                .rotationEffect(angle)
                .onTapGesture {
                    withAnimation{isRotated.toggle()}
                }
        }
    }
}

#Preview {
    VStack{
        Title_view()
        Spacer()
    }
        .padding()
}
