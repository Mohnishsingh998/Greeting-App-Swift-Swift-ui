//
//  Message-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 01/01/26.
//

import SwiftUI
let message : [DataItemModel] = [
    .init(
        text: "Hello Guys!",
        color: .green
    ),
    .init(
        text: "Learing swift brother!",
        color: .orange
    ),
    .init(
        text: "these is the 1st topic to learn in these!",
        color: .red
    ),
    .init(
        text: "so i think some how views must be clear" ,
        color: .gray
    ),
    .init(
        text: "lets see more",
        color: .yellow
    )
]
struct Message_view: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 12
        ){
            
            ForEach(message) { mess in
                Textview(
                    text: mess.text,
                    color: mess.color
                )
            }
        }
    }
}

#Preview {
    Message_view()
}
