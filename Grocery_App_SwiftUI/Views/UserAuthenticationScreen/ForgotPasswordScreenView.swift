//
//  ForgotPasswordScreenView.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 06/09/23.
//

import SwiftUI

struct ForgotPasswordScreenView: View {
<<<<<<< HEAD
=======
    
>>>>>>> WelcomeScreen
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var deviceHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 30){
                
                 Text("Forgot Password")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Lorem ipsum dolor sit amet, conseteur sadisciping elitr, sed diam nonumy")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.054, brightness: 0.35))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15.0)
                
                VStack(alignment: .center, spacing: 15){
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
                .frame(width: deviceWidth - 25)
                
                Button{
                    print("send link btn pressed")
                } label: {
                    Text("Send Link")
                        .foregroundColor(Color.white)

                        .padding(.vertical, 20)
                        .background(Color("primary"))
                }
                .frame(width: deviceWidth - 25)
                .background(Color("primary"))
                .cornerRadius(10)
            }
                
                
                
            }
            .frame(width: deviceWidth)
        
        .padding(.top, 50)
            Spacer()
        }
        .background(Color(hue: 0.565, saturation: 0.06, brightness: 0.974))
    }
}

struct ForgotPasswordScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreenView()
    }
}
