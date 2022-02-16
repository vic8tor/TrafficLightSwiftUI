//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Victor on 16.02.2022.
//

import SwiftUI

struct ContentView: View {
    enum CurrentColor {
        case red, yellow, green
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Lights(color: .init(red: 178 / 255, green: 0, blue: 0, opacity: 0.5))
                .tag(1)
            Lights(color: .init(red: 101 / 255 , green: 57 / 255, blue: 33 / 255, opacity: 0.5))
                .tag(2)
            Lights(color: .init(red: 0, green: 58 / 255, blue: 0, opacity: 0.5))
                .tag(3)
            Spacer()
            

        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
