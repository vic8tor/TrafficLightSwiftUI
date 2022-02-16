//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Victor on 16.02.2022.
//

import SwiftUI

enum CurrentColor {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentColor.red
    @State private var buttonTitle = "START"
    @State private var redLightValue = 0.2
    @State private var yellowLightValue = 0.2
    @State private var greenLightValue = 0.2
    
    var body: some View {
        VStack(spacing: 20) {
            Lights(color: .red).opacity(redLightValue)

            Lights(color: .yellow).opacity(yellowLightValue)

            Lights(color: .green).opacity(greenLightValue)
            Spacer()
            
            ChangeColorButton(title: buttonTitle, action: {
                buttonTitle = "NEXT"
                switch currentLight {
                case .red:
                    greenLightValue = 0.2
                    redLightValue = 1
                    currentLight = .yellow
                case .yellow:
                    redLightValue = 0.2
                    yellowLightValue = 1
                    currentLight = .green
                default:
                    yellowLightValue = 0.2
                    greenLightValue = 1
                    currentLight = .red
                }
            })
                .padding()
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
