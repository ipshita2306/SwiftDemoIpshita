//
//  ForgotPasswordView.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 04/07/22.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var is_clicked=false
    var body: some View {
        HStack{
            Button{
                is_clicked.toggle()
            }label:{
                Text("< Back")
            }.fullScreenCover(isPresented: $is_clicked, content: NewLoginPageView.init)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.topLeading)
        VStack{
            Text("Enter your email and we will send you a link to reset your password!")
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
