//
//  TextColor.swift
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

/// 3/4 bit text color.
///
/// - black: 30
/// - red: 31
/// - green: 32
/// - yellow: 33
/// - blue: 34
/// - magenta: 35
/// - cyan: 36
/// - white: 37
/// - lightBlack: 90
/// - lightRed: 91
/// - lightGreen: 92
/// - lightYellow: 93
/// - lightBlue: 94
/// - lightMagenta: 95
/// - lightCyan: 96
/// - lightWhite: 97
public enum TextColor: Int {
    case black = 30, red, green, yellow, blue, magenta, cyan, white
    case lightBlack = 90, lightRed, lightGreen, lightYellow, lightBlue, lightMagenta, lightCyan, lightWhite
}
