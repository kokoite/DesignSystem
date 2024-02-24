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

        case background = "primary"

        public var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }

    public enum PrimaryAction: String, ColorRepresentable {

        case background = "primaryAction"

        public var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }

    public enum SecondaryAction: String, ColorRepresentable {
        case background = "secondaryAction"

        public var color: UIColor? {
            return UIColor(named: rawValue, in: .module, compatibleWith: nil)
        }
    }
}
