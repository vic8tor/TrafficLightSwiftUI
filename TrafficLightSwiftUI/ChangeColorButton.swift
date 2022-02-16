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
        Button(action: action, label: {
            Text(title)
        })
        .frame(
            minWidth: 100,
            maxWidth: .infinity,
            minHeight: 65)
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.indigo))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white,lineWidth: 4))
        .font(.system(size: 35, weight: Font.Weight.bold))
        .padding([.leading, .trailing], 25)
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "Start", action: {})
    }
}
