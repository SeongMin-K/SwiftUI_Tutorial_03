//
//  ContentView.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                CustomButtonStyleView()
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: MyTextFieldView()) {
                        Image(systemName: "t.square")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.black)
                    }
                    NavigationLink(destination: MyPopupView()) {
                        Image(systemName: "p.square")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.black)
                    }
                    NavigationLink(destination: MyPickerView()) {
                        Image(systemName: "p.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color.red)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : 0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
