//
//  ANSIEscapeCode.swift
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

/// ANSI escape code.
public struct ANSIEscapeCode {

    /// ESC character. `\u{001B}[`
    public static let esc = "\u{001B}["

    /// Control cursor.
    public struct Cursor {

        /// Escape code for moving cursor up.
        ///
        /// - Parameter count: Number of cells to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)A`
        public static func up(_ count: Int = 1) -> String {
            return "\(esc)\(count)A"
        }

        /// Escape code for moving cursor down.
        ///
        /// - Parameter count: Number of cells to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)B`
        public static func down(_ count: Int = 1) -> String {
            return "\(esc)\(count)B"
        }

        /// Escape code for moving cursor forward.
        ///
        /// - Parameter count: Number of cells to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)C`
        public static func forward(_ count: Int = 1) -> String {
            return "\(esc)\(count)C"
        }

        /// Escape code for moving cursor backward.
        ///
        /// - Parameter count: Number of cells to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)D`
        public static func backward(_ count: Int = 1) -> String {
            return "\(esc)\(count)D"
        }

        /// Escape code for moving cursor to next line.
        ///
        /// - Parameter count: Number of lines to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)E`
        public static func nextLine(_ count: Int = 1) -> String {
            return "\(esc)\(count)E"
        }

        /// Escape code for moving cursor to previous line.
        ///
        /// - Parameter count: Number of lines to move.
        ///                    Default value is 1.
        /// - Returns: `\u{001B}[(COUNT)F`
        public static func previousLine(_ count: Int = 1) -> String {
            return "\(esc)\(count)F"
        }

        /// Escape code for moving cursor to column.
        ///
        /// - Parameter column: Target column.
        /// - Returns: `\u{001B}[(COLUMN)G`
        public static func column(_ column: Int) -> String {
            return "\(esc)\(column)G"
        }

        /// Escape code for moving cursor to specific position.
        ///
        /// - Parameters:
        ///   - row: Target row.
        ///   - column: Target column.
        /// - Returns: `\u{001B}[(ROW);(COLUMN)H`
        public static func position(row: Int, column: Int) -> String {
            return "\(esc)\(row);\(column)H"
        }

        /// Escape code for saving cursor position.
        /// `\u{001B}[s`
        public static var saveCursorPosition: String {
            return "\(esc)s"
        }

        /// Escape code for restoring cursor position.
        /// `\u{001B}[u`
        public static var restoreCursorPosition: String {
            return "\(esc)u"
        }

        /// Escape code for hiding cursor.
        /// `\u{001B}[?25l`
        public static var hideCursor: String {
            return "\(esc)?25l"
        }

        /// Escape code for showing cursor.
        /// `\u{001B}[?25h`
        public static var showCursor: String {
            return "\(esc)?25h"
        }
    }

    /// Erase content.
    public struct Erase {

        /// Erase content in display.
        ///
        /// - Parameter type: Erase in display type.
        /// - Returns: `\u{001B}[(TYPE)J`
        public static func eraseInDisplay(_ type: EraseInDisplayType) -> String {
            return "\(esc)\(type.hashValue)J"
        }

        /// Erase content in line.
        ///
        /// - Parameter type: Erase in line type.
        /// - Returns: `\u{001B}[(TYPE)K`
        public static func eraseInLine(_ type: EraseInLineType) -> String {
            return "\(esc)\(type.hashValue)K"
        }
    }

    /// Scroll screen.
    public struct Scroll {

        /// Scroll screen up.
        /// New lines are added at the bottom.
        ///
        /// - Parameter count: Number of lines to scroll.
        /// - Returns: `\u{001B}[(COUNT)S`
        public static func up(_ count: Int = 1) -> String {
            return "\(esc)\(count)S"
        }

        /// Scroll screen down.
        /// New lines are added at the top.
        ///
        /// - Parameter count: Number of lines to scroll.
        /// - Returns: `\u{001B}[(COUNT)T`
        public static func down(_ count: Int = 1) -> String {
            return "\(esc)\(count)T"
        }
    }

    /// Change font.
    public struct Decoration {

        /// Escape code for resetting
        /// all decoration attributes.
        /// `\u{001B}[0m`
        public static var reset: String {
            return "\(esc)0m"
        }

        /// Escape code for resetting
        /// background color attributes.
        /// `\u{001B}[39m`
        public static var resetBackgroundColor: String {
            return "\(esc)39m"
        }

        /// Escape code for setting text bold.
        /// `\u{001B}[1m`
        public static var bold: String {
            return "\(esc)1m"
        }

        /// Escape code for setting text italic.
        /// `\u{001B}[3m`
        public static var italic: String {
            return "\(esc)3m"
        }

        /// Escape code for setting text underline.
        /// `\u{001B}[4m`
        public static var underline: String {
            return "\(esc)4m"
        }

        /// Escape code for setting text blink.
        /// `\u{001B}[5m`
        public static var blink: String {
            return "\(esc)5m"
        }

        /// Escape code for setting text color.
        ///
        /// - Parameter color: Text color.
        /// - Returns: Escape code for setting text color.
        public static func textColor(_ color: TextColor) -> String {
            return "\(esc)\(color.rawValue)m"
        }

        /// Escape code for setting text 8 bits color.
        ///
        /// - Parameter color: 8 bits color.
        ///                    Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
        /// - Returns: Escape code for setting text 8 bits color.
        public static func text8BitsColor(_ color: Int) -> String {
            return "\(esc)38;5;\(color)m"
        }

        /// Escape code for setting text RGB color.
        /// Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
        ///
        /// - Parameters:
        ///   - red: 8 bits red color value.
        ///   - green: 8 bits green color value.
        ///   - blue: 8 bits blue color value.
        /// - Returns: Escape code for setting text RGB color.
        public static func textRGBColor(red: Int, green: Int, blue: Int) -> String {
            return "\(esc)38;2;\(red);\(green);\(blue)m"
        }

        /// Escape code for setting background color.
        ///
        /// - Parameter color: Background color.
        /// - Returns: Escape code for setting background color.
        public static func backgroundColor(_ color: BackgroundColor) -> String {
            return "\(esc)\(color.rawValue)m"
        }

        /// Escape code for setting background 8 bits color.
        ///
        /// - Parameter color: 8 bits color.
        ///                    Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
        /// - Returns: Escape code for setting background 8 bits color.
        public static func background8BitsColor(_ color: Int) -> String {
            return "\(esc)48;5;\(color)m"
        }

        /// Escape code for setting background RGB color.
        /// Refer: https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit
        ///
        /// - Parameters:
        ///   - red: 8 bits red color value.
        ///   - green: 8 bits green color value.
        ///   - blue: 8 bits blue color value.
        /// - Returns: Escape code for setting background RGB color.
        public static func backgroundRGBColor(red: Int, green: Int, blue: Int) -> String {
            return "\(esc)48;2;\(red);\(green);\(blue)m"
        }
    }
}
