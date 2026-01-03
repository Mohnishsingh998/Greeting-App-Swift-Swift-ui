//
//  Title-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct Title_view: View {
    @State private var subtitle : LocalizedStringKey = "Welcome to iOS"
    var body: some View {
        HStack {
            Greeting_Text_view(subtitle: $subtitle)
            Spacer()
            Rotateable_circle_view()
            
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
