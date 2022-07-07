//
//  Color.swift
//  myApp
//
//  Created by Griselda Juarez Morales on 06/07/22.
//

import Foundation
import SwiftUI
@available(iOS 13.0, *)
struct BaseColor{
    let contrastPrimary = Color("contrastPrimary")
    let contrastSecondary = Color("contrastSecondary")
    let themePrimary = Color("themePrimary")
    let themeSecondary = Color("themeSecondary")
    let brandPrimary = Color("brandPrimary")
    let darkPrimary = Color("darkPrimary")
    let lightPrimary = Color("lightPrimary")
    let gray = Color("gray")
}
@available(iOS 13.0, *)
struct TokenColor {
    let baseColor = BaseColor()
    
    let highlight: Color!
    let inactive: Color!
    
    let textDefault: Color!
    let textTheme: Color!
    let textNote: Color!
    let textHighlight: Color!
    let textLight: Color!
    
    let buttonTheme: Color!
    let buttonContrast: Color!
    let buttonHighlight: Color!
    
    let backgroundDefault: Color!
    let backgroundTheme: Color!
    
    init() {
        /// themePrimary
        self.textTheme = baseColor.themePrimary
        self.buttonTheme = baseColor.themePrimary
        self.backgroundTheme = baseColor.themePrimary
        
        /// themeSecondary
        self.textNote = baseColor.themeSecondary
        
        /// contrastPrimary
        self.buttonContrast = baseColor.contrastPrimary
        self.textDefault = baseColor.contrastPrimary
        self.backgroundDefault = baseColor.contrastPrimary
        
        /// brand
        self.highlight = baseColor.brandPrimary
        self.buttonHighlight = baseColor.brandPrimary
        self.textHighlight = baseColor.brandPrimary
        
        /// lightPrimary
        self.textLight = baseColor.lightPrimary
        
        /// gray
        self.inactive = baseColor.gray
    }
}

extension Color {
    static let Token = TokenColor()
}

