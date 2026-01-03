//
//  Rotateable-circle-view.swift
//  Greeting-App
//
//  Created by mohnishsingh yadav on 03/01/26.
//

import SwiftUI

struct Rotateable_circle_view: View {
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
    var body: some View {
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

#Preview {
    Rotateable_circle_view()
}
