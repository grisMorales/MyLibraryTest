import SwiftUI

//Enum nombre de las fuentes
//NOMBRE de la fuente IGUAL  FILE
public enum dynaPuffFamily: String, CaseIterable {
    
    case bold = "DynaPuffCondensed-Bold"
    case medium = "DynaPuffCondensed-Medium"
    case regular = "DynaPuffCondensed-Regular"
    case extraBold = "DynaPuffCondensed-SemiBold"
    case regularDos = "BeautifulPeople-Regular"
    case extraBoldDos = "VeganStyle-Regular"
    case press = "PressStart2P-Regular"
}

@available(iOS 13.0, *)
public extension Font.TextStyle {
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline, .body: return 18
        case .subheadline, .callout: return 16
        case .footnote: return 14
        case .caption, .caption2: return 12
        @unknown default:
            return 8
        }
    }
}

@available(iOS 14.0, *)
public extension Font {
    private static func custom(_ font: dynaPuffFamily, relativeTo style: Font.TextStyle) -> Font {
        custom(font.rawValue, size: style.size, relativeTo: style)
    }

    static let dynaPuff = custom(.regular, relativeTo: .body)
    static let dynaPuffLargeTitle = custom(.bold, relativeTo: .largeTitle)
    static let dynaPuffLargeTitleBlack = custom(.extraBold, relativeTo: .largeTitle)
    static let dynaPuffLargeTitleSemiBold = custom(.medium, relativeTo: .largeTitle)
    static let dynaPuffTitle1 = custom(.press, relativeTo: .title)
    static let dynaPuffHeadline = custom(.medium, relativeTo: .headline)
    static let dynaPuffSubHeadline = custom(.regular, relativeTo: .subheadline)
    static let dynaPuffSubHeadlineSemiBold = custom(.medium, relativeTo: .subheadline)
    static let dynaPuffFootnote = custom(.regularDos, relativeTo: .footnote)
    static let dynaPuffFootnoteSemiBold = custom(.extraBoldDos, relativeTo: .footnote)
    
}
