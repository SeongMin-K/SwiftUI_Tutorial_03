//
//  CustomButtonStyleView.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

struct CustomButtonStyleView: View {
    var body: some View {
        VStack(spacing: 30) {
            Button(action: {
                print("Tab button clicked!")
            }, label: {
                Text("Tab")
                    .bold()
            }).buttonStyle(MyButtonStyle(color: Color.red, type: .tab))
            
            Button(action: {
                print("Long button clicked!")
            }, label: {
                Text("Long")
                    .bold()
            }).buttonStyle(MyButtonStyle(color: Color.yellow, type: .long))
            
            Button(action: {
                print("Shrink button clicked!")
            }, label: {
                Text("Shrink")
                    .bold()
            }).buttonStyle(MyShrinkButtonStyle(color: Color.green))
            
            Button(action: {
                print("Spin button clicked!")
            }, label: {
                Text("Spin")
                    .bold()
            }).buttonStyle(MySpinButtonStyle(color: Color.purple))
            
            Button(action: {
                print("Blur button clicked!")
            }, label: {
                Text("Blur")
                    .bold()
            }).buttonStyle(MyBlurButtonStyle(color: Color.black))
        }
    }
}

struct CustomButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonStyleView()
    }
}
