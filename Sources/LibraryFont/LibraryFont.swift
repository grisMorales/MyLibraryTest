import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct LibraryLiFont: View {
    
    public static func registerFonts() {
        JetBrainsMono.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
        }
    }
    
    public init() {
        
    }
}
