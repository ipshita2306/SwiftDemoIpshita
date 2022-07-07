//
//  NewLoginPageView.swift
//  SwiftDemoip
//
//  Created by Pradeep Chaturvedi on 04/07/22.
//

import SwiftUI

struct NewLoginPageView: View {
   // @Binding var country_codes=""
    @State var mobile_no = ""
    @State var password = ""
    @State var is_secure = true
    @State var is_presented = false
    @State var is_signup = false
    var body: some View {
        VStack{
            ScrollView{
            VStack(alignment: .center){
                Image("brandicon")
                .resizable()
                .frame(width: 100, height: 100, alignment: .top)
              //  .position(x: View.size.width/2, y: View.size.height/2)
            Text("Welcome back,").font(.largeTitle)
                .bold()
            
            Text("Login to continue!")
                .font(.title2)
            }
            VStack(alignment: .leading){
                VStack{
                    TextFields(placeholder: "Mobile Number*", text: mobile_no)
                    SecureTextFields(is_secure: true, password: password, placeholder: "Password*")
                }
                VStack(alignment: .trailing){
                    Button{
                        is_presented.toggle()
                    }label:{
                    Text("Forgot Password?").foregroundColor(.pink)
                    }
                    .fullScreenCover(isPresented: $is_presented){
                        ForgotPasswordView()
                    }
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(10)
                //ButtonCustom(buttontext:"Login")
                VStack{
                    Button{
                        validation()
                    }label:{
                        Text("Login").font(.body)
                            .foregroundColor(.white)
                            .bold()
                    }
                }.padding(10)
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(.gray))
                    .background(Color.pink)
                    
                CapsuleText(placeholder: "Or login with")

                HStack{
                SocialsButton(image_name: "signin_fb")
                    Spacer()
                SocialsButton(image_name: "signin_google")
                }
            }.frame(maxWidth: .infinity)
                .padding(10)
            HStack{
                Text("Are you new?").foregroundColor(.black)
                Button{
                    is_signup.toggle()
                }label:{
                        Text("Create your account").foregroundColor(.pink)
                }.fullScreenCover(isPresented: $is_signup, content: NewSignUpView.init)
            }
        }
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    func validation(){
        if (mobile_no.isEmpty){
            print("Please enter mobile number!")
        }else if(password.isEmpty){
            print("Please enter password!")
        }
    }
}
struct NewLoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        NewLoginPageView()
    }
}
