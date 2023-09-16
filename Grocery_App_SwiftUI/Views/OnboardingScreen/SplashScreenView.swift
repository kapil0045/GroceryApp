//
//  SplashScreenView.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 03/09/23.
//

import SwiftUI

struct SplashScreenView: View {
    
    var splashScreens: [SplashScreen] = splashList
    
    var body: some View {
        NavigationView {
            TabView{
                ForEach(splashScreens) { screen in
                    SplashComponent(splash: screen)
                }//: For Each
            }//TabView
            .tabViewStyle(PageTabViewStyle())
        
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
