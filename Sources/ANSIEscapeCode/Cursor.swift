//
//  Cursor.swift
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

/// Move cursor up.
///
/// - Parameter count: Number of cells to move.
///                    Default value is 1.
public func moveCursorUp(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.up(count))
}

/// Move cursor down.
///
/// - Parameter count: Number of cells to move.
///                    Default value is 1.
public func moveCursorDown(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.down(count))
}

/// Move cursor forward.
///
/// - Parameter count: Number of cells to move.
///                    Default value is 1.
public func moveCursorForward(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.forward(count))
}

/// Move cursor backward.
///
/// - Parameter count: Number of cells to move.
///                    Default value is 1.
public func moveCursorBackward(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.backward(count))
}

/// Move cursor to next line.
///
/// - Parameter count: Number of lines to move.
///                    Default value is 1.
public func moveCursorNextLine(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.nextLine(count))
}

/// Move cursor to previous line.
///
/// - Parameter count: Number of lines to move.
///                    Default value is 1.
public func moveCursorPreviousLine(_ count: Int = 1) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.previousLine(count))
}

/// Move cursor to column.
///
/// - Parameter column: Target column.
public func moveCursorToColumn(_ column: Int) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.column(column))
}

/// Move cursor to position.
///
/// - Parameters:
///   - row: Traget row.
///   - column: Target column.
public func moveCursorToPosition(row: Int, column: Int) {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.position(row: row, column: column))
}

/// Save cursor position.
public func saveCursorPosition() {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.saveCursorPosition)
}

/// Restore cursor position.
public func restoreCursorPosition() {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.restoreCursorPosition)
}

/// Hide cursor.
public func hideCursor() {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.hideCursor)
}

/// Show cursor.
public func showCursor() {
    printANSIEscapeCode(ANSIEscapeCode.Cursor.showCursor)
}
