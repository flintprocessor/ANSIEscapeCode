//
//  BackgroundColor.swift
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

/// 3/4 bit background color.
///
/// - black: 40
/// - red: 41
/// - green: 42
/// - yellow: 43
/// - blue: 44
/// - magenta: 45
/// - cyan: 46
/// - white: 47
/// - lightBlack: 100
/// - lightRed: 101
/// - lightGreen: 102
/// - lightYellow: 103
/// - lightBlue: 104
/// - lightMagenta: 105
/// - lightCyan: 106
/// - lightWhite: 107
public enum BackgroundColor: Int {
    case black = 40, red, green, yellow, blue, magenta, cyan, white
    case lightBlack = 100, lightRed, lightGreen, lightYellow, lightBlue, lightMagenta, lightCyan, lightWhite
}
