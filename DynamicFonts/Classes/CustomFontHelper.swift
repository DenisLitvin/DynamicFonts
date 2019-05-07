//use separated from other files

import UIKit.UIFont

extension UIFont {
    
    private static var fontSizeMultiplier : CGFloat {
        switch UIApplication.shared.preferredContentSizeCategory {
        case UIContentSizeCategory.accessibilityExtraExtraExtraLarge: return 40 / 16
        case UIContentSizeCategory.accessibilityExtraExtraLarge: return 34 / 16
        case UIContentSizeCategory.accessibilityExtraLarge: return 28 / 16
        case UIContentSizeCategory.accessibilityLarge: return 25 / 16
        case UIContentSizeCategory.accessibilityMedium: return 22 / 16
        case UIContentSizeCategory.extraExtraExtraLarge: return 20 / 16
        case UIContentSizeCategory.extraExtraLarge: return 18 / 16
        case UIContentSizeCategory.extraLarge: return 17 / 16
        case UIContentSizeCategory.large: return 1.0
        case UIContentSizeCategory.medium: return 15 / 16
        case UIContentSizeCategory.small: return 14 / 16
        case UIContentSizeCategory.extraSmall: return 13 / 16
        default: return 1.0
        }
    }
    
    internal static func fixed(_ size: CGFloat, _ font: FontConstructor) -> UIFont {
        if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
            font.register()
        }
        let font = UIFont(name: font.name, size: size)!
        return font
    }
    
    internal static func dynamic(_ size: CGFloat, _ font: FontConstructor) -> UIFont {
        if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
            font.register()
        }
        let newSize = size * fontSizeMultiplier
        let font = UIFont(name: font.name, size: newSize)!
        return font
    }
}

internal enum FontTrait: String {
    case regular = "Regular"
    case bold = "Bold"
    case light = "Light"
}

internal enum FontConstructor {
    
    case interstate(FontTrait)
    
    internal var family: String {
        switch self {
        case .interstate(_):
            return "Interstate"
        }
    }
    
    internal var name: String {
        switch self {
        case .interstate(let trait):
            return "\(family)-\(trait.rawValue)"
        }
    }
    private var path: String {
        return "\(name).otf"
    }
    
    private var url: URL? {
        let bundle = Bundle(for: BundleToken.self)
        return bundle.url(forResource: path, withExtension: nil)
    }
    
    internal func register() {
        guard let url = url else { return }
        var errorRef: Unmanaged<CFError>?
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, &errorRef)
    }
}

private final class BundleToken {}
