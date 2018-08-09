//
//  UIFont+content.swift
//  DynamicallySizedText
//
//  Created by Денис Литвин on 09.12.2017.
//

import UIKit


extension String {
    public func localized(comment: String = "") -> String {
        return String(NSLocalizedString(self, comment: comment))
    }
}

extension UIFont {
    
    public var bolded: UIFont {
        return fontDescriptor.withSymbolicTraits(.traitBold)
            .map { UIFont(descriptor: $0, size: 0) } ?? self
    }
    
    public var italicized: UIFont {
        return fontDescriptor.withSymbolicTraits(.traitItalic)
            .map { UIFont(descriptor: $0, size: 0) } ?? self
    }
    
    private static var fontSizeMultiplier : CGFloat {
        switch UIApplication.shared.preferredContentSizeCategory {
        case UIContentSizeCategory.accessibilityExtraExtraExtraLarge: return 23 / 16
        case UIContentSizeCategory.accessibilityExtraExtraLarge: return 22 / 16
        case UIContentSizeCategory.accessibilityExtraLarge: return 21 / 16
        case UIContentSizeCategory.accessibilityLarge: return 20 / 16
        case UIContentSizeCategory.accessibilityMedium: return 19 / 16
        case UIContentSizeCategory.extraExtraExtraLarge: return 19 / 16
        case UIContentSizeCategory.extraExtraLarge: return 18 / 16
        case UIContentSizeCategory.extraLarge: return 17 / 16
        case UIContentSizeCategory.large: return 1.0
        case UIContentSizeCategory.medium: return 15 / 16
        case UIContentSizeCategory.small: return 14 / 16
        case UIContentSizeCategory.extraSmall: return 13 / 16
        default: return 1.0
        }
    }

    public static func fixed(_ size: CGFloat, family: FontTextFamily) -> UIFont {
        let customFontDescriptor = UIFontDescriptor(fontAttributes: [
            UIFontDescriptor.AttributeName.family: family.rawValue,
            UIFontDescriptor.AttributeName.size: size])
        let font = UIFont(descriptor: customFontDescriptor, size: 0)
        return font
    }

    public static func dynamic(_ size: CGFloat, family: FontTextFamily) -> UIFont {
        let pointSize = size * fontSizeMultiplier
        let customFontDescriptor = UIFontDescriptor(fontAttributes: [
            UIFontDescriptor.AttributeName.family: family.rawValue,
            UIFontDescriptor.AttributeName.size: pointSize])
        let font = UIFont(descriptor: customFontDescriptor, size: 0)
        return font
    }
}

public enum FontTextFamily: String {
    
    case proximaNova = "Proxima Nova"
    case copperplate = "Copperplate"
    case heitiSC = "Heiti SC"
    case appleSDGothicNeo = "Apple SD Gothic Neo"
    case thonburi = "Thonburi"
    case gillSans = "Gill Sans"
    case markerFelt = "Marker Felt"
    case hiraginoMaruGothicProN = "Hiragino Maru Gothic ProN"
    case courierNew = "Courier New"
    case kohinoorTelugu = "Kohinoor Telugu"
    case heitiTC = "Heiti TC"
    case avenirNextCondensed = "Avenir Next Condensed"
    case tamilSangamMN = "Tamil Sangam MN"
    case helveticaNeue = "Helvetica Neue"
    case gurmukhiMN = "Gurmukhi MN"
    case georgia = "Georgia"
    case timesNewRoman = "Times New Roman"
    case sinhalaSangamMN = "Sinhala Sangam MN"
    case arialRoundedMTBold = "Arial Rounded MT Bold"
    case kailasa = "Kailasa"
    case kohinoorDevanagari = "Kohinoor Devanagari"
    case kohinoorBangla = "Kohinoor Bangla"
    case chalkboardSE = "Chalkboard SE"
    case pingFangTC = "PingFang TC"
    case gujaratiSangamMN = "Gujarati Sangam MN"
    case geezaPro = "Geeza Pro"
    case damascus = "Damascus"
    case noteworthy = "Noteworthy"
    case avenir = "Avenir"
    case mishafi = "Mishafi"
    case academyEngravedLET = "Academy Engraved LET"
    case futura = "Futura"
    case partyLET = "Party LET"
    case kannadaSangamMN = "Kannada Sangam MN"
    case arialHebrew = "Arial Hebrew"
    case farah = "Farah"
    case arial = "Arial"
    case chalkduster = "Chalkduster"
    case kefa = "Kefa"
    case hoeflerText = "Hoefler Text"
    case optima = "Optima"
    case palatino = "Palatino"
    case malayalamSangamMN = "Malayalam Sangam MN"
    case alNile = "Al Nile"
    case laoSangamMN = "Lao Sangam MN"
    case bradleyHand = "Bradley Hand"
    case hiraginoMinchoProN = "Hiragino Mincho ProN"
    case pingFangHK = "PingFang HK"
    case helvetica = "Helvetica"
    case courier = "Courier"
    case cochin = "Cochin"
    case trebuchetMS = "Trebuchet MS"
    case devanagariSangamMN = "Devanagari Sangam MN"
    case oriyaSangamMN = "Oriya Sangam MN"
    case snellRoundhand = "Snell Roundhand"
    case zapfDingbats = "Zapf Dingbats"
    case bodoni72 = "Bodoni 72"
    case verdana = "Verdana"
    case americanTypewriter = "American Typewriter"
    case avenirNext = "Avenir Next"
    case baskerville = "Baskerville"
    case khmerSangamMN = "Khmer Sangam MN"
    case didot = "Didot"
    case savoyeLET = "Savoye LET"
    case bodoniOrnaments = "Bodoni Ornaments"
    case symbol = "Symbol"
    case menlo = "Menlo"
    case notoNastaliqUrdu = "Noto Nastaliq Urdu"
    case bodoni72Smallcaps = "Bodoni 72 Smallcaps"
    case papyrus = "Papyrus"
    case hiraginoSans = "Hiragino Sans"
    case pingFangSC = "PingFang SC"
    case myanmarSangamMN = "Myanmar Sangam MN"
    case zapfino = "Zapfino"
    case teluguSangamMN = "Telugu Sangam MN"
    case bodoni72Oldstyle = "Bodoni 72 Oldstyle"
    case euphemiaUCAS = "Euphemia UCAS"
    case banglaSangamMN = "Bangla Sangam MN"
    
}





