//
//  ContentView.swift
//  TrafficLightV2
//
//  Created by Вячеслав Кремнев on 13.04.2022.
//

import SwiftUI


enum TrafficLights {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var redLightValue = 0.25
    @State private var yellowLightValue = 0.25
    @State private var greenLightValue = 0.25
    
    @State private var currentLight = TrafficLights.red
    @State private var buttonTitle = "Start"
    
    private func changeColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.25
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightValue = lightIsOff
            redLightValue = lightIsOn
        case .yellow:
            currentLight = .green
            redLightValue = lightIsOff
            yellowLightValue = lightIsOn
        case .green:
            currentLight = .red
            greenLightValue = lightIsOn
            yellowLightValue = lightIsOff
        }
    }
    
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                ColorizedCircle(lightColor: .red, lightOpacity: redLightValue)
                ColorizedCircle(lightColor: .yellow, lightOpacity: yellowLightValue)
                ColorizedCircle(lightColor: .green, lightOpacity: greenLightValue)
                
                ChangeLightButton(title: buttonTitle, buttonAction: {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    changeColor()
                })
                .offset(y: 80)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
