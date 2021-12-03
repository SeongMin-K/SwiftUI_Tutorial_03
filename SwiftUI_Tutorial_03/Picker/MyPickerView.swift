//
//  MyPickerView.swift
//  SwiftUI_Tutorial_03
//
//  Created by SeongMinK on 2021/12/03.
//

import SwiftUI

struct MyPickerView: View {
    @State private var selectionValue = 0
    
    let myColorArray = ["Red", "Green", "Blue"]
    
    func changeColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(changeColor(index: selectionValue))
            
            Text("Segment value: \(selectionValue)")
            
            Text("Selected color: \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue, label: Text("")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 50)
            
            Spacer().frame(height: 50)
            
            Picker(selection: $selectionValue, label: Text("")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.wheel)
            .frame(width: 100, height: 100)
            .clipped()
            .padding()
            .border(changeColor(index: selectionValue), width: 5)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        MyPickerView()
    }
}
