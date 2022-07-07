//
//  ButtonCustom.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 03/07/22.
//

import SwiftUI

struct ButtonCustom: View {
    @State var buttontext="Test Text"
    var body: some View {
        VStack{
            Button{
            }label:{
                Text(buttontext).font(.body)
                    .foregroundColor(.white)
                    .bold()
                    
            }
        }.padding(10)
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
            .background(Color.pink)
    
    }
}

struct ButtonCustom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCustom().previewLayout(.sizeThatFits)
    }
}
