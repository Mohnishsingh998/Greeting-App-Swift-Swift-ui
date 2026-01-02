//
//  Background-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI

struct Background_view: View {
    var body: some View {
        LinearGradient(
            colors: [
                .accentColor ,
                .black ,
                .red
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

#Preview {
    Background_view()
}
