//
//  File.swift
//  
//
//  Created by Pranjal Agarwal on 13/02/24.
//

import Foundation
import UIKit

extension UIFont {


    convenience init? (using font: FontRepresentable, and size: CGFloat) {
        self.init(name: font.name, size: size)
    }

    static func registerFont(bundle: Bundle, font: FontRepresentable, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: font.name, withExtension: fontExtension) else {
            fatalError("Font not found")
        }
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            fatalError("Couldn't load data from the font \(font)")
        }
        guard let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        guard success else {
            print("Error registering font: maybe it was already registered.")
            error?.release()
            return
        }
        return
    }
}
