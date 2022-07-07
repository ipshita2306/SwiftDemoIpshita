//
//  CheckToggleStyle.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 05/07/22.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark" : "square")
                    .foregroundColor(configuration.isOn ? .pink : .white)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }.overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
        }
        .buttonStyle(PlainButtonStyle())
    }
}
