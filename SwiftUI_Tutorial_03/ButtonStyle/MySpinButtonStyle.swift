//
//  MySpinButtonStyle.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

struct MySpinButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 25))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(15)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 90) : Angle(degrees: 0))
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MySpinButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("Spin button clicked!")
        }, label: {
            Text("Spin")
        }).buttonStyle(MySpinButtonStyle(color: Color.purple))
    }
}
