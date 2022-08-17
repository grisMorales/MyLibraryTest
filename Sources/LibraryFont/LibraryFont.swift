import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct LibraryFont{
    
    public static func registerFonts() {
        dynaPuffFamily.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
        }
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {

           guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
                 let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
                 let font = CGFont(fontDataProvider) else {
                     fatalError("Couldn't create font from data")
           }

           var error: Unmanaged<CFError>?

           CTFontManagerRegisterGraphicsFont(font, &error)
    }
    
    public init() {
        
    }
}
