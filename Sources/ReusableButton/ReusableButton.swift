import SwiftUI

@available(iOS 13.0, *)

public struct ReusableButton: View {
    
    public var body: some View {
        Button("Tap me", action: {})
             .buttonStyle(AppButtonStyle())
    }
    
    public init() {}
    
    public struct AppButtonStyle: ButtonStyle {
        
        let buttonFont = Font.custom("Zilla Slab", size: 20).weight(.bold)
        
        public func makeBody(configuration: Self.Configuration) -> some View {
            configuration
                .label
                .font(buttonFont)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.horizontal, 10)
                .foregroundColor(Color.token.backgroundTheme)
                .offset(y: -1)
                .frame(height: 30)
                .background(Color.token.backgroundTheme)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(configuration.isPressed ? 0.9 : 1)
                .opacity(configuration.isPressed ? 0.6 : 1)
                .animation(.spring())
        }
    }

}
