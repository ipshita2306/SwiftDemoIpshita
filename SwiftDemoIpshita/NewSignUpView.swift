//
//  SignUpView.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 04/07/22.
//

import SwiftUI

struct NewSignUpView: View {
    @State var mobile_no = ""
    @State var password = ""
    @State var email = ""
    @State var is_secure = true
    @State var is_secure_confirm = true
    @State var index = 0
    @State var first_name = ""
    @State var last_name = ""
    @State var full_name = ""
    @State var confirm_password = ""
    @State var is_checked = true
    @State var is_signup = false
    var body: some View {
        VStack {
            ScrollView{
            VStack(alignment: .center){
                Image("brandicon")
            .resizable()
            .frame(width: 100, height: 100, alignment: .top)
          //  .position(x: View.size.width/2, y: View.size.height/2)
        Text("Create account,").font(.largeTitle)
            .bold()
        Text("Signup to get started!")
                .font(.title2)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack(alignment: .leading){
                HStack{
                    Button{
                        self.index = 0
                    }label:{
                        Text("As a seller").foregroundColor(self.index == 0 ? .white : .black)
                            .padding()
                            .frame(maxWidth: .infinity)
                    }.background(self.index == 0 ? Color.pink : Color.white)
                    Button{
                        self.index = 1
                    }label:{
                        Text("As a buyer").foregroundColor(self.index == 1 ? .white : .black)
                            .padding()
                            .frame(maxWidth: .infinity)
                    }.background(self.index == 1 ? Color.pink : Color.white)
                }.border(Color.gray)
                VStack{
                    if self.index == 0{
                        Group{
                        TextFields(placeholder: "First Name*", text: first_name)
                        TextFields(placeholder: "Last Name*", text: last_name)
                        TextFields(placeholder: "Mobile Number*", text: mobile_no)
                        SecureTextFields(is_secure: true, password: password, placeholder: "Password*")
                        SecureTextFields(is_secure: true, password: confirm_password, placeholder: "Confirm Password*")
                        }
                    }else{
                        Group{
                            TextFields(placeholder: "Email*", text: email)
                            TextFields(placeholder: "Full Name*", text: full_name)
                            TextFields(placeholder: "Mobile Number*", text: mobile_no)
                            SecureTextFields(is_secure: true, password: password, placeholder: "Password*")
                            SecureTextFields(is_secure: true, password: confirm_password, placeholder: "Confirm Password*")
                        }
                    }
                }.frame(maxWidth: .infinity, alignment: .leading).padding()
                HStack{
                    Toggle(isOn: $is_checked) {
                    }.toggleStyle(CheckToggleStyle())
                    Group{
                    Text("I agree to the ") +
                    Text("Privacy Policy").underline() +
                    Text(" and ") +
                    Text("Terms of Service.").underline()
                    }.minimumScaleFactor(0.1)
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                //ButtonCustom(buttontext: "Sign up")
                VStack{
                    Button{
                        validation()
                    }label:{
                        Text("Sign up").font(.body)
                            .foregroundColor(.white)
                            .bold()
                    }
                }.padding(10)
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    .background(Color.pink)
                CapsuleText(placeholder: "Or sign up with")
                HStack{
                SocialsButton(image_name: "signup_fb")
                    Spacer()
                SocialsButton(image_name: "signup_google")
                }
            }.padding(5)
            .frame(maxWidth: .infinity)
            HStack{
                Text("Already have an account?").foregroundColor(.black)
                Button{
                    is_signup.toggle()
                }label:{
                        Text("Login").foregroundColor(.pink)
                }.fullScreenCover(isPresented: $is_signup, content: NewLoginPageView.init)
            }
        }
    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
}
    func validation(){
        if (self.index == 0){
            if (first_name.isEmpty){
                print("Please enter first name!")
            }else if(last_name.isEmpty){
                print("Please enter last name!")
            }else if(mobile_no.isEmpty){
                print("Please enter mobile number!")
            }else if(password.isEmpty){
                print("Please enter password!")
            }else if(confirm_password.isEmpty){
                print("Please enter confirm password field!")
            }
        }else if(self.index == 1){
            if (email.isEmpty){
                print("Please enter email!")
            }else if(full_name.isEmpty){
                print("Please enter full name!")
            }else if(mobile_no.isEmpty){
                print("Please enter mobile number!")
            }else if(password.isEmpty){
                print("Please enter password!")
            }else if(confirm_password.isEmpty){
                print("Please enter confirm password field!")
            }
        }
    }
}
struct NewSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NewSignUpView()
    }
}
