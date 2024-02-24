//
//  File.swift
//  
//
//  Created by Pranjal Agarwal on 13/02/24.
//

import Foundation
import UIKit

public class Font {

    private let fontExtension = "otf"

    /// Registers all the fonts available in the `DunzoDesignSystem`
    func register() {
        let bundle = Bundle.module
        Roboto.allCases.forEach{ UIFont.registerFont(bundle: bundle,
                                                     font: $0,
                                                     fontExtension: fontExtension) }
    }

    public enum Roboto: String, FontRepresentable, CaseIterable {

        case bold = "Roboto-Bold"
        case medium = "Roboto-Medium"
        case regular = "Roboto-Regular"

        var name: String {
            rawValue
        }

        func font(for size: CGFloat) -> UIFont? {
            UIFont(name: name, size: size)
        }
    }
}
