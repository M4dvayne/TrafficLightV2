//
//  ChangeLightButton.swift
//  TrafficLightV2
//
//  Created by Вячеслав Кремнев on 14.04.2022.
//

import SwiftUI

struct ChangeLightButton: View {
    
    let title: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
        .frame(width: 150, height: 60)
        .background(Color.orange)
        .cornerRadius(15)
        
    }
}

struct ChangeLightButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLightButton(title: "Start", buttonAction: {})
    }
}
