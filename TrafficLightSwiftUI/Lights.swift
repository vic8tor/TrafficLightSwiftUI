//
//  RedCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Victor on 16.02.2022.
//

import SwiftUI

struct Lights: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        Lights(color: .init(red: 178 / 255, green: 0, blue: 0, opacity: 1))
    }
}
