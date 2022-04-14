//
//  SwiftUIView.swift
//  TrafficLightV2
//
//  Created by Вячеслав Кремнев on 13.04.2022.


import SwiftUI

struct ColorizedCircle: View {
    
    let lightColor: Color
    let lightOpacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(lightColor)
            .opacity(lightOpacity)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ColorizedCircle(lightColor: .red, lightOpacity: 0.60)
            ColorizedCircle(lightColor: .yellow, lightOpacity: 0.60)
            ColorizedCircle(lightColor: .green, lightOpacity: 0.60)
        }
    }
}
