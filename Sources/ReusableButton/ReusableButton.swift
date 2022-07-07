import SwiftUI
//import Color

@available(iOS 13.0, *)

public struct ReusableButton: View {
    
    public var body: some View {
        Button("Tap me", action: {})
             .buttonStyle(AppButtonStyle())
    }
    
    public init() {}
    
    public struct AppButtonStyle: ButtonStyle {
        
        let buttonFont = Font.custom("Zilla Slab", size: 20).weight(.bold)
        
        
        func getColor() -> Color {
            switch self {
            case .highlight:
                return Color.Token.textHighlight
            case .main:
                return Color.Token.textDefault
            }
        }
        
        public func makeBody(configuration: Self.Configuration) -> some View {
            configuration
                .label
                .font(buttonFont)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.horizontal, 10)
                .foregroundColor(Color.)
                .offset(y: -1)
                .frame(height: 30)
                .background(Color.Token)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(configuration.isPressed ? 0.9 : 1)
                .opacity(configuration.isPressed ? 0.6 : 1)
                .animation(.spring())
                //.foregroundColor(Color.Token.textTheme)
        }
    }

}
