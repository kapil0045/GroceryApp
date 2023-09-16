//
//  VerifyNumberScreen.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 16/09/23.
//

import SwiftUI

struct VerifyNumberScreen: View {
    
    var countryFlag: CountryCodes
    
    @State var doIWantThisViewToShow: Bool = false
    
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var deviceHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 30){
                
                 Text("Verify your number")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Lorem ipsum dolor sit amet, conseteur sadisciping elitr, sed diam nonumy")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.054, brightness: 0.35))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15.0)
                
                VStack(alignment: .center, spacing: 15){
                HStack {
                    ZStack{
                        Button{
                            print("country code selection pressed")
                            doIWantThisViewToShow.toggle()
                        } label: {
                            Image(countryFlag.countryFlag)
                            
                            Text(countryFlag.countryCode)
                                .foregroundColor(.black)
                            
                            Image("downTriangle")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                        
                    }
                    
                   
                    
                    Text(" ")
                        .frame(width: 1, height: 60)
                        .background(.gray)
                    
                    TextField("", text: .constant("Your Mobile Number")).foregroundColor(Color.gray)
                        .font(.system(size: 16))
                }
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
                .frame(width: deviceWidth - 25)
                
                Button{
                    print("next btn pressed")
                } label: {
                    Text("Next")
                        .foregroundColor(Color.white)

                        .padding(.vertical, 20)
                        .background(Color("primary"))
                }
                .frame(width: deviceWidth - 25)
                .background(Color("primary"))
                .cornerRadius(10)
                    
                    Text("Resend confirmation code (1:23)")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.054, brightness: 0.35))
            }
                
                
                
            }
            .frame(width: deviceWidth)
        
        .padding(.top, 50)
            Spacer()
        }
        .background(Color(hue: 0.565, saturation: 0.06, brightness: 0.974))
    }
}

struct VerifyNumberScreen_Previews: PreviewProvider {
    static var previews: some View {
        VerifyNumberScreen(countryFlag: countryCodeList[0])
    }
}
