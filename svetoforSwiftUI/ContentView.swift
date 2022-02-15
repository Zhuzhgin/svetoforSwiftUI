//
//  ContentView.swift
//  svetoforSwiftUI
//
//  Created by Artem Zhuzhgin on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    @State var redOpacity: Double = 0.2
    @State var yellowOpacity: Double = 0.2
    @State var greenOpacity: Double = 0.2
    @State var text = Text("Press")
    
    var body: some View {
        VStack{
            CircleSvetofor(colorofLight: .red, opacity: redOpacity)
                .padding(.bottom, 20 )
                .padding(.top, 50)
            CircleSvetofor(colorofLight: .yellow, opacity: yellowOpacity)
                .padding(.bottom, 20)
            CircleSvetofor(colorofLight: .green, opacity: greenOpacity)
            
            Spacer()
            
            Button(
                action: {
                    nextColor()
                }, label: {
                    text
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                })
        }
        .padding()
    }
    
    func nextColor(){
        text = Text("Next")
        tapCount += 1
        if tapCount > 3 {tapCount = 1}
        switch tapCount {
        case 1:
            redOpacity = 1
            yellowOpacity = 0.2
            greenOpacity = 0.2
        case 2:
            redOpacity = 0.2
            yellowOpacity = 1
            greenOpacity = 0.2
            
        default:
            redOpacity = 0.2
            yellowOpacity = 0.2
            greenOpacity = 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
