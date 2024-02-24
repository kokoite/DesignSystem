//
//  File.swift
//  
//
//  Created by Pranjal Agarwal on 24/02/24.
//

import Foundation
import UIKit

public class Color {

    public enum Primary: String, ColorRepresentable {

        case background = "Primary"

        public var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }

    public enum PrimaryAction: String, ColorRepresentable {

        case background = "PrimaryAction"

        public var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }

    enum SecondaryAction: String, ColorRepresentable {
        case background = "SecondaryAction"

        var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }


}