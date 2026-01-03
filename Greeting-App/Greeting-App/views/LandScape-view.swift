//
//  LandScape-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 03/01/26.
//

import SwiftUI

struct LandScape_view: View {
    var body: some View {
        ZStack {
            Background_view()
                .ignoresSafeArea()
            HStack{
                Spacer()
                vertical_title_view()
                Spacer()
                Message_view()

            }
            .padding()
        }
    }
}

#Preview {
    LandScape_view()
}
