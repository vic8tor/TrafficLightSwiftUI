//
//  ChangeColorButton.swift
//  TrafficLightSwiftUI
//
//  Created by Victor on 16.02.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button("START") {
            
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.indigo))
        .font(.system(size: 35, weight: Font.Weight.bold))

        
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "Start", action: {})
    }
}
