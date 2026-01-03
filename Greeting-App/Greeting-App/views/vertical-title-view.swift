//
//  vertical-title-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 03/01/26.
//

import SwiftUI

struct vertical_title_view: View {
    @State private var subtitle : LocalizedStringKey = "Welcome to iOS Development"
    var body: some View {
        VStack(alignment: .leading) {
            Greeting_Text_view(subtitle: $subtitle)
            Rotateable_circle_view()
            Spacer()
        }
        .padding(.vertical)
        
    }
}

#Preview {
    vertical_title_view()
}
