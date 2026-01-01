//
//  Title-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct Title_view: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 0,
        ){
            Text("Greeting-App")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("Welcome to IOS Development")
                .font(.headline)
                .fontWeight(.thin)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    Title_view()
}
