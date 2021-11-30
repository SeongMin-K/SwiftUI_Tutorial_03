//
//  MyBlurButtonStyle.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

struct MyBlurButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 25))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(15)
            .blur(radius: configuration.isPressed ? 5 : 0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MyBlurButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("Blur button clicked!")
        }, label: {
            Text("Blur")
        }).buttonStyle(MyBlurButtonStyle(color: Color.black))
    }
}
