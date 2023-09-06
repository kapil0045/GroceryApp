//
//  AuthLoginScreenView.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 05/09/23.
//

import SwiftUI

struct AuthLoginScreenView: View {
    
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State private var rememberMe = true
    
    var body: some View {
        VStack {
            Image("Auth1LoginImg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 2.5)
            VStack(alignment: .leading, spacing: 20){
                Text("Welcome back!")
                
                
                Text("Sign in to your account")
                    .foregroundColor(Color.gray)
                
                VStack(alignment: .center, spacing: 20){
                    HStack {
                        Image("email")
                            .resizable()
                            .frame(width: 25, height: 20)
                        TextField("", text: .constant("Email Address")).foregroundColor(Color.gray)
                            .font(.system(size: 16))
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    
                    
                    HStack {
                        Image("passwordLock")
                            .resizable()
                            .frame(width: 25, height: 20)
                        TextField("", text: .constant("Enter Password")).foregroundColor(Color.gray)
                            .font(.system(size: 16))
                        
                        Image("passwordEye")
                            .resizable()
                            .frame(width: 25, height: 20)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    //.overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color.black))
                    HStack(spacing: 20){
                        HStack{
                            Toggle("", isOn: $rememberMe)
                                .labelsHidden()
                            
                            
                            Text("Remember Me")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 16))
                            
                        }
                        
                        Text("Forgot Password")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 16))
                        
                    }
                    
                    Button {
                        print("Create an account")
                    } label: {

                            Text("Login")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)

                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color("primary-Dark"))
                    .cornerRadius(10)

                    
                    HStack{
                        Text("Don't have an account?")
                            .foregroundColor(Color.gray)
                        Text("Signup")
                            .foregroundColor(Color.black)
                    }
                    .onTapGesture {
                        print("Sign up")
                    }
                }
                Spacer()
            }
            .padding(20)
            .frame(maxWidth: UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.top)
            .background(Color(hue: 0.565, saturation: 0.06, brightness: 0.974))
            .cornerRadius(topLeft, corners: .topLeft)
            .cornerRadius(topRight, corners: .topRight)
        }
        
    }
}

struct AuthLoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AuthLoginScreenView()
    }
}
