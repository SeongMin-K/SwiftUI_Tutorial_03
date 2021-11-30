//
//  MyShrinkButtonStyle.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

struct MyShrinkButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 25))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 0.5 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct MyShrinkButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("Shrink button clicked!")
        }, label: {
            Text("Shrink")
        }).buttonStyle(MyShrinkButtonStyle(color: Color.green))
    }
}
