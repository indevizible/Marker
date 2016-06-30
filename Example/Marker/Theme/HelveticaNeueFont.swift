//
//  HelveticaNeueFont.swift
//  Marker
//
//  Created by Htin Linn on 5/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

internal struct HelveticaNeueFont: Font {
    
    // MARK: - Protocol conformance
    
    // MARK: Font
    
    var familyName: String {
        return "Helvetica Neue"
    }
    
    func regularFont(size: CGFloat) -> UIFont {
        return UIFont(name: "HelveticaNeue", size: size)!
    }
    
    func boldFont(size: CGFloat) -> UIFont {
        return UIFont(name: "HelveticaNeue-Bold", size: size)!
    }
    
    func italicFont(size: CGFloat) -> UIFont {
        return UIFont(name: "HelveticaNeue-Italic", size: size)!
    }
    
}
