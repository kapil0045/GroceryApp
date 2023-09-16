//
//  CountryCodes.swift
//  Grocery_App_SwiftUI
//
//  Created by DigitalFlake Kapil Dongre on 16/09/23.
//

import Foundation

struct CountryCodes: Identifiable{
    
    var id = UUID()
    var countryFlag: String
    var countryCode: String
    
    
}

 var countryCodeList = [CountryCodes(countryFlag: "AustraliaFlag", countryCode: "+61"), CountryCodes(countryFlag: "Chinaflag", countryCode: "+86"), CountryCodes(countryFlag: "indiaFlag", countryCode: "+91"), CountryCodes(countryFlag: "ItalyFlag", countryCode: "+39"), CountryCodes(countryFlag: "JapanFlag", countryCode: "+81"), CountryCodes(countryFlag: "SouthAfricaFlag", countryCode: "+27"), CountryCodes(countryFlag: "UAEFlag", countryCode: "+971"), CountryCodes(countryFlag: "USAFlag", countryCode: "+1")]
