//
//  MyButtonStyle.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
}

struct MyButtonStyle: ButtonStyle {
    var color: Color
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 25))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 1.5 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .onTapGesture {
                switch type {
                case .tab:
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                case .long:
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
    }
}

struct ButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("Tab button clicked!")
        }, label: {
            Text("Tab")
        }).buttonStyle(MyButtonStyle(color: Color.red, type: .tab))
    }
}
