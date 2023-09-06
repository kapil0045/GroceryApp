//
//  WelcomeScreenView.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 05/09/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var selection: Int? = nil
    
    var body: some View {
        
        VStack {
            Image("Auth1WelcomeImg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 2)
            VStack(alignment: .leading, spacing: 20){
                Text("Welcome")
                
                
                Text("Lorem ipsum dolor sit amet conseteur elitr, sed diam nonumy")
                    .foregroundColor(Color.gray)
                
                VStack(alignment: .center, spacing: 20){
                    Button {
                        print("Welcome to google")
                    } label: {
                        HStack(spacing: 50){
                            Image("Group 4")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Continue With Google!")
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(.white)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: AuthSignupScreenView(), tag: 2, selection: $selection) {
                    Button {
                        print("Create an account")
                        self.selection = 2
                    } label: {
                        HStack(spacing: 50){
                            Image("userIcon")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Create an account")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color("primary-Dark"))
                    .cornerRadius(10)
                    
                }
                    NavigationLink(destination: AuthLoginScreenView(), tag: 3, selection: $selection) {
                        HStack{
                            Text("Already have an account?")
                                .foregroundColor(Color.gray)
                            Text("Login")
                                .foregroundColor(Color.black)
                        }
                        .onTapGesture {
                            self.selection = 3
                        }
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

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
