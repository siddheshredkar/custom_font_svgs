//
//  Font.swift
//  Font&Svgs
//
//  Created by Siddhesh Redkar on 20/09/21.
//


import Foundation
import UIKit

extension UIFont {

    public enum RubikType: String {
        case light = "-Light"
        case regular = "-Regular"
        case medium = "-Medium"
        case semiBold = "-SemiBold"
        case bold = "-Bold"
        case extraBold = "-ExtraBold"
        case black = "-Black"
        case lightItalic = "-LightItalic"
        case italic = "-Italic"
        case mediumItalic = "-MediumItalic"
        case semiBoldItalic = "-SemiBoldItalic"
        case boldItalic = "-BoldItalic"
        case extraBoldItalic = "-ExtraBoldItalic"
        case blackItalic = "-BlackItalic"
    }

    static func Rubik(_ type: RubikType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "Rubik\(type.rawValue)", size: size) ?? UIFont.systemFont(ofSize: 15, weight: .light)
    }

    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }

    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }

}
