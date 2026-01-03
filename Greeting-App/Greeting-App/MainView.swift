//
//  MainView.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 03/01/26.
//

import SwiftUI
// Compact width , regular height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
//        CHECK IF ITS PORTRAIT OR LANDSCAP
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            ContentView()
        }else{
            LandScape_view()
        }
    }
}

#Preview {
    MainView()
}
