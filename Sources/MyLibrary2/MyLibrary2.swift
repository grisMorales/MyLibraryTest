import SwiftUI

@available(iOS 13.0, *)

public struct MyLibrary2 {
    public private(set) var text = "Hello, World!"
   
   
    public init() {
        
    }
    
    public struct IntentoBoton: ButtonStyle {
        
        let buttonFont = Font.custom("Zilla Slab", size: 20).weight(.bold)
        
        public func makeBody(configuration: Self.Configuration) -> some View {
            configuration
                .label
                .font(buttonFont)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.horizontal, 10)
                .foregroundColor(.white)
                .offset(y: -1)
                .frame(height: 30)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(configuration.isPressed ? 0.9 : 1)
                .opacity(configuration.isPressed ? 0.6 : 1)
                .animation(.spring())
        }
    }

}
