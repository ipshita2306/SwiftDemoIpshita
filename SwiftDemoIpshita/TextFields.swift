//
//  TextFields.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 06/07/22.
//

import SwiftUI

struct TextFields: View {
    @State var placeholder = "placeholder"
    @State var text = "text"
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(placeholder)
            TextField("", text: $text).padding(10)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
        }.frame(maxWidth: .infinity)
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields().previewLayout(.sizeThatFits)
    }
}
