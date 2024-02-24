//
//  File.swift
//  
//
//  Created by Pranjal Agarwal on 13/02/24.
//

import UIKit


protocol FontRepresentable {
    var name: String { get }
    func font(for size: CGFloat) -> UIFont?
}
