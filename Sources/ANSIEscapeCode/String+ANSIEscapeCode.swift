//
//  String+ANSIEscapeCode.swift
//  ANSIEscapeCode
//
//  Copyright (c) 2018 Jason Nam (https://jasonnam.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

// MARK: - ANSI Escape Code
public extension String {

    /// Set text bold on terminal.
    var boldOutput: String {
        return ANSIEscapeCode.Decoration.bold
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text italic on terminal.
    var italicOutput: String {
        return ANSIEscapeCode.Decoration.italic
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text underline on terminal.
    var underlineOutput: String {
        return ANSIEscapeCode.Decoration.underline
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text blink on terminal.
    var blinkOutput: String {
        return ANSIEscapeCode.Decoration.blink
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text color on terminal.
    ///
    /// - Parameter color: Text color.
    /// - Returns: Processed string.
    func color(_ color: TextColor) -> String {
        return ANSIEscapeCode.Decoration.textColor(color)
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text 8 bits color on terminal.
    ///
    /// - Parameter color: 8 bits color.
    ///                    Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
    /// - Returns: Processed string.
    func colorFrom8BitsColorSet(_ color: Int) -> String {
        return ANSIEscapeCode.Decoration.text8BitsColor(color)
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set text RGB color on terminal.
    /// Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
    ///
    /// - Parameters:
    ///   - red: 8 bits red color value.
    ///   - green: 8 bits green color value.
    ///   - blue: 8 bits blue color value.
    /// - Returns: Processed string.
    func colorFromRGBColorSet(red: Int, green: Int, blue: Int) -> String {
        return ANSIEscapeCode.Decoration.textRGBColor(red: red, green: green, blue: blue)
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set background color on terminal.
    ///
    /// - Parameter color: Background color.
    /// - Returns: Processed string.
    func backgroundColor(_ color: BackgroundColor) -> String {
        return ANSIEscapeCode.Decoration.backgroundColor(color)
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set background 8 bits color on terminal.
    ///
    /// - Parameter color: 8 bits color.
    ///                    Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
    /// - Returns: Processed string.
    func backgroundColorFrom8BitsColorSet(_ color: Int) -> String {
        return ANSIEscapeCode.Decoration.background8BitsColor(color)
            + self + ANSIEscapeCode.Decoration.reset
    }

    /// Set background RGB color on terminal.
    /// Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
    ///
    /// - Parameters:
    ///   - red: 8 bits red color value.
    ///   - green: 8 bits green color value.
    ///   - blue: 8 bits blue color value.
    /// - Returns: Processed string.
    func backgroundColorFromRGBColorSet(red: Int, green: Int, blue: Int) -> String {
        return ANSIEscapeCode.Decoration.backgroundRGBColor(red: red, green: green, blue: blue)
            + self + ANSIEscapeCode.Decoration.reset
    }
}
