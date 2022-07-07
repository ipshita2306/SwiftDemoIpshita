//
//  SecureTextFields.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 06/07/22.
//

import SwiftUI

struct SecureTextFields: View {
    @State var is_secure = true
    @State var password = ""
    @State var placeholder = "Password"
    var body: some View {
        VStack (alignment: .leading){
            Text(placeholder)
            HStack{
                if is_secure{
                    SecureField("",text: $password).padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    }else{
                    TextField("",text: $password).padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    }
                }.overlay(alignment: .trailing){
                    Image(systemName: self.is_secure ? "eye.slash" : "eye")
                    .onTapGesture {
                        is_secure.toggle()
                    }
                }
        }
    }
}

struct SecureTextFields_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextFields().previewLayout(.sizeThatFits)
    }
}
