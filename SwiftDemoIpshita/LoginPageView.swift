//
//  LoginPageView.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 03/07/22.
//

import SwiftUI

struct LoginPageView: View {
    @State var full_name=""
    @State var email=""
    @State var password=""
    @State var confirm_pass=""
    @State var isvalidated=false
    @State var is_secure=true
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Login Page")
            ScrollView{
                VStack (alignment: .leading, spacing: 20){
                    TextField("* Full Name:", text: $full_name)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius:5).stroke(.gray))
                    
                    TextField("* Email:", text: $email).padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    if is_secure{
                        SecureField("* Password:", text: $password).padding(10).overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        SecureField("* Confirm Password:", text: $confirm_pass).padding(10).overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        Button(action: {
                            is_secure.toggle()
                        }){
                            Image(systemName: "eye.slash")
                                .foregroundColor(.gray)
                        }.frame(maxWidth: .infinity)
                    }else{
                        TextField("* Password:", text: $password).padding(10).overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        TextField("* Confirm Password:", text: $confirm_pass).padding(10).overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                        Button(action: {
                            is_secure.toggle()
                        }){
                            Image(systemName: "eye")
                                .foregroundColor(.gray)
                        }.frame(maxWidth: .infinity)
                    }
                    
                   
            
               //     ButtonCustom(buttontext: "Sign Up")
                    Button{
                        validation()
                    } label:{
                        Text("Sign up")
                    }.font(.headline)
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.black)
                }.padding(20)
            }
        }.padding(10)
        .frame(maxWidth: .infinity)
    }
    func validation(){
       // let email_regex = "[A-Za-z0-9+_.-]+@[a-zA-Z0-9.-]+$"
        if (full_name.isEmpty || email.isEmpty || password.isEmpty || confirm_pass.isEmpty){
            print("Please fill out all the mandatory fields")
        }
        else if (confirm_pass != password){
            print("Passwords do not match")
        }
        else if(email.isEmpty){
            print("Please enter correct email ID")
        }
        
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
