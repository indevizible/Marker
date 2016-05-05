//
//  MarkerLabel.swift
//  Marker
//
//  Created by Htin Linn on 5/4/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

public extension UILabel {
    
    /**
     Sets the label text to an attributed string created from the specified string and text style.
     
     - parameter text:      The text to be displayed in the label.
     - parameter textStyle: Text style object containing style information.
     */
    func setText(text: String, textStyle: TextStyle) {
        attributedText = NSAttributedString(string: text, attributes: textAttributesFromTextStyle(textStyle))
    }
    
    /**
     Sets the label text to an attributed string created from the specified string and text style.
     This function treats the specified string as a Markdown formatted string and applies appropriate styling to it.
     Refer to MarkerdownParser.Tag for a list of supported Markdown tags.
     
     - parameter markdownText: The Markdown text to be displayed in the label.
     - parameter textStyle:    Text style object containing style information.
     */
    func setMarkdownText(markdownText: String, textStyle: TextStyle) {
        do {
            let (parsedString, tags) = try MarkdownParser.parseString(markdownText)
            attributedText = attributedStringFromParsedString(parsedString, tags: tags, textStyle: textStyle)
        } catch {
            text = markdownText
        }
    }
        
}
