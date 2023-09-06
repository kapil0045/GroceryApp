//
//  SplashScreen.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 03/09/23.
//

import Foundation

struct SplashScreen: Identifiable{
    
    var id = UUID()
    var title: String
    var headline: String
    var logoImage: String
    var image: String
}

var splashList = [SplashScreen(title: "Welcome To", headline: "Lorem ipsum dolor sit amet conseteur elitr, sed diam nonumy", logoImage: "bigCart1", image: "defaultSplash1BgImg"),
                  SplashScreen(title: "Buy Quality Dairy Products", headline: "Lorem ipsum dolor sit amet conseteur elitr, sed diam nonumy", logoImage: "", image: "defaultSplash2BgImg"),
                  SplashScreen(title: "Buy premium Quality Fruits", headline: "Lorem ipsum dolor sit amet conseteur elitr, sed diam nonumy", logoImage: "", image: "defaultSplash3BgImg"),
                  SplashScreen(title: "Get Discount On All Products", headline: "Lorem ipsum dolor sit amet conseteur elitr, sed diam nonumy", logoImage: "", image: "defaultSplash4BgImg")]
