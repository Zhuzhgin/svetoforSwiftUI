//
//  Circle.swift
//  svetoforSwiftUI
//
//  Created by Artem Zhuzhgin on 15.02.2022.
//

import SwiftUI

struct CircleSvetofor: View {
   
    var colorofLight: Color
    var opacity: Double
    
    @State private var diameter = CGFloat(100)
    
    
    var body: some View {
        Circle()
            .frame(width: diameter, height: diameter)
            .foregroundColor(colorofLight)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .opacity(opacity)
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleSvetofor(colorofLight: .red, opacity: 0.8 )
    }
}
