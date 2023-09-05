//
//  SplashComponent.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 03/09/23.
//

import SwiftUI

struct SplashComponent: View {
    
    var splash: SplashScreen
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack (alignment: .top){
            
            //Background image
            Image(splash.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            
            
            VStack(alignment: .center, spacing: 20) {
                //Title
                Text("\(splash.title)")
                    .font(.system(size: 20))
                    //.font(.headline)
                .fontWeight(.bold)
                
                //Logo if required
                if splash.logoImage.isEmpty {
                    
                }else{
                    Image(splash.logoImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .background(.white)
                }
               
                
                //Headline
                Text("\(splash.headline)")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.054, brightness: 0.35))
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .frame(width: 300)
                    .background(.white)
                
                //Button: Start
                Spacer()
               
                    StartButton()
           
                
            }
            .padding(.bottom)
            
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                      isAnimating = true
                    }
        }
    }
}

struct SplashComponent_Previews: PreviewProvider {
    static var previews: some View {
        SplashComponent(splash: splashList[0])
    }
}
