//
//  StartButton.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 03/09/23.
//

import SwiftUI

struct StartButton: View {
    
    @State var selection: Int? = nil
    
    var deviceWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var deviceHeight: CGFloat {
        UIScreen.main.bounds.height
    }
    
    var body: some View {
        
        NavigationLink(destination: WelcomeScreenView(), tag: 1, selection: $selection) {
        Button {
            print("Get started")
            self.selection = 1
        } label: {
            Text("Get Started")
                .foregroundColor(Color.white)
                .padding(.horizontal, 100)
                .padding(.vertical, 10)
                .background(Color("primary"))
            
        }
        .frame(maxWidth: deviceWidth)
    }
        }
        

    }


struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
