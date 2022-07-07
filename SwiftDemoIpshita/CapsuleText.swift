//
//  CapsuleText.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 06/07/22.
//

import SwiftUI

struct CapsuleText: View {
    @State var placeholder = "Placeholder"
    var body: some View {
        HStack(alignment: .center){
            Capsule().frame(height:1)
                .foregroundColor(.gray)
            Text(placeholder)
                .foregroundColor(.black)
                .font(.body)
            Capsule().frame(height:1)
                .foregroundColor(.gray)
        }.padding(.top,10)
    }
}

struct CapsuleText_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleText().previewLayout(.sizeThatFits)
    }
}
