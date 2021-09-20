# custom_font_svgs

Swift 4 set custom font programmatically

Solution:

You can try

lbl.font = UIFont(name:"FontAwesome",size:15)
the name should be the font name as it is when you install it . not as the file name in your case was Noto Kufi Arabic instead of NotoKufiArabicRegular

click the font and open it with Font Book , then install it after that specify exactly the name shown in the parameter in the line above

import Foundation
import UIKit

extension UIFont {

    public enum OpenSansType: String {
        case extraboldItalic = "-ExtraboldItalic"
        case semiboldItalic = "-SemiboldItalic"
        case semibold = "-Semibold"
        case regular = ""
        case lightItalic = "Light-Italic"
        case light = "-Light"
        case italic = "-Italic"
        case extraBold = "-Extrabold"
        case boldItalic = "-BoldItalic"
        case bold = "-Bold"
    }

    static func OpenSans(_ type: OpenSansType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "OpenSans\(type.rawValue)", size: size)!
    }

    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }

    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }

}
Use:

self.numberLabel.font = UIFont.OpenSans(.bold, size: 20)

If the previous answer doesn't help, you didn't configure all links correctly at xCode for sure!

Add this by drag and drop to your files on the left side of the project.
Add your CUSTOM fonts to the info.plist file.
Make sure that you've linked all custom fonts you need: "Build Phases" -> "Copy Bundle Resources" -> "+" add your font.
More information you can get here: Medium.com


# Important 

So open up the Info.plist (it’s in the Supporting Files folder). Add a new array of strings to it: “Fonts provided by application”. Add the filenames for each font you want to use as String entries in the array. I’ve added Starjout.ttf and STJEDISE.TTF

plist-array-name

plist entries




https://newbedev.com/swift-4-set-custom-font-programmatically
https://grokswift.com/custom-fonts/
