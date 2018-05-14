<div align="center"><img src="/Assets/logo.png" width="600" /></div>
<h1 align="center">
  <b>ANSIEscapeCode</b>
  <br>
  <a href="https://github.com/flintbox/ANSIEscapeCode/releases"><img src="https://img.shields.io/github/release/flintbox/ANSIEscapeCode.svg" alt="GitHub release" /></a>
  <a href="https://swift.org/package-manager"><img src="https://img.shields.io/badge/Swift%20PM-compatible-orange.svg" alt="Swift Package Manager" /></a>
  <a href="https://github.com/flintbox/ANSIEscapeCode/blob/master/LICENSE"><img src="https://img.shields.io/github/license/mashape/apistatus.svg" alt="license" /></a>
</h1>

*Control terminal **cursor** and **font** or **erase content**. Build modern, interactive command line tool with **colorful** and **dynamic** output strings.*

*https://en.wikipedia.org/wiki/ANSI_escape_code*

**Table of Contents**
- [Installation](#installation)
- [Cursor](#cursor)
  - [Up](#up)
  - [Down](#down)
  - [Forward](#forward)
  - [Backward](#backward)
  - [Next Line](#next-line)
  - [Previous Line](#previous-line)
  - [Column](#column)
  - [Position](#position)
  - [Save Position](#save-position)
  - [Restore Position](#restore-position)
  - [Hide](#hide)
  - [Show](#show)
- [Erase](#erase)
  - [Erase in Display](#erase-in-display)
  - [Erase in Line](#erase-in-line)
- [Scroll](#scroll)
  - [Scroll Up](#scroll-up)
  - [Scroll Down](#scroll-down)
- [Decoration](#decoration)
  - [Reset](#reset)
  - [Reset Background Color](#reset-background-color)
  - [Bold](#bold)
  - [Italic](#italic)
  - [Underline](#underline)
  - [Blink](#blink)
  - [Text Color](#text-color)
  - [Text Color 8 bits](#text-color-8-bits)
  - [Text RGB Color](#text-rgb-color)
  - [Background Color](#background-color)
  - [Background Color 8 bits](#background-color-8-bits)
  - [Background RGB Color](#background-rgb-color)
- [Contribute](#contribute)

## Installation

Add ANSIEscapeCode to `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/flintbox/ANSIEscapeCode", from: "0.1.0")
]
```

## Cursor

### Up

`\u{001B}[(n)A`: Move cursor up `n` (default 1) cells.

```swift
ANSIEscapeCode.Cursor.up(3) // \u{001B}[3A
moveCursorUp() /// Move cursor up 1 cell.
```

### Down

`\u{001B}[(n)B`: Move cursor down `n` (default 1) cells.

```swift
ANSIEscapeCode.Cursor.down() // \u{001B}[1B
moveCursorDown(5) /// Move cursor down 5 cells.
```

### Forward

`\u{001B}[(n)C`: Move cursor forward `n` (default 1) cells.

```swift
ANSIEscapeCode.Cursor.forward(9) // \u{001B}[9C
moveCursorForward(4) // Move cursor forward 4 cells.
```

### Backward

`\u{001B}[(n)D`: Move cursor backward `n` (default 1) cells.

```swift
ANSIEscapeCode.Cursor.backward() // \u{001B}[1D
moveCursorBackward(2) // Move cursor backward 2 cells.
```

### Next Line

`\u{001B}[(n)E`: Move cursor to beginning of the line `n` (default 1) lines down.

```swift
ANSIEscapeCode.Cursor.nextLine(2) // \u{001B}[2E
moveCursorNextLine() // Move cursor to next line.
```

### Previous Line

`\u{001B}[(n)F`: Move cursor to beginning of the line `n` (default 1) lines up.

```swift
ANSIEscapeCode.Cursor.previousLine(3) // \u{001B}[3F
moveCursorPreviousLine(5) // Move cursor to next line 5 times.
```

### Column

`\u{001B}[(n)G`: Move cursor to column `n`.

```swift
ANSIEscapeCode.Cursor.column(2) // \u{001B}[2G
moveCursorToColumn(2) // Move cursor to second column.
```

### Position

`\u{001B}[(n);(m)1H`: Move cursor to row `n`, column `m`.

```swift
ANSIEscapeCode.Cursor.position(row: 1, column: 1) // \u{001B}[1;1H
moveCursorToPosition(row: 5, column: 10) // Move cursor to position row 5 and column 10.
```

### Save Position

`\u{001B}[s`: Save cursor position.

```swift
ANSIEscapeCode.Cursor.saveCursorPosition // \u{001B}[s
saveCursorPosition() // Save cursor position.
```

### Restore Position

`\u{001B}[u`: Restore cursor position.

```swift
ANSIEscapeCode.Cursor.restoreCursorPosition // \u{001B}[u
restoreCursorPosition() // Restore cursor position.
```

### Hide

`\u{001B}[?25l`: Hide cursor.

```swift
ANSIEscapeCode.Cursor.hideCursor // \u{001B}[?25l
hideCursor() // Hide cursor.
```

### Show

`\u{001B}[?25h`: Show cursor.

```swift
ANSIEscapeCode.Cursor.showCursor // \u{001B}[?25h
showCursor() // Show cursor.
```

## Erase

### Erase in Display

`\u{001B}[(n)J`: Clear part of the screen. If `n` is 0 (or missing), clear from cursor to end of screen. If `n` is 1, clear from cursor to beginning of the screen. If `n` is 2, clear entire screen.

```swift
ANSIEscapeCode.Erase.eraseInDisplay(.entireScreen) // \u{001B}[2J
eraseInDisplay(.fromCursorToBeginningOfScreen) // Erase content from cursor to beginning of screen.
```

### Erase in Line

`\u{001B}[(n)K`: Erase part of the line. If `n` is zero (or missing), clear from cursor to the end of the line. If `n` is 1, clear from cursor to beginning of the line. If `n` is 2, clear entire line. Cursor position does not change.

```swift
ANSIEscapeCode.Erase.eraseInLine(.fromCursorToEndOfLine) // \u{001B}[0K
eraseInLine(.entireLine) // Erase entire line.
```

## Scroll

### Scroll Up

`\u{001B}[(n)S`: Scroll whole page up by `n` (default 1) lines. New lines are added at the bottom.

```swift
ANSIEscapeCode.Scroll.up() // \u{001B}[1S
scrollUp(3) // Scroll up screen 3 lines.
```

### Scroll Down

`\u{001B}[(n)T`: Scroll whole page down by `n` (default 1) lines. New lines are added at the top.

```swift
ANSIEscapeCode.Scroll.down(5) // \u{001B}[5T
scrollDown() // Scroll down screen 1 line.
```

## Decoration

### Reset

`\u{001B}[0m`: Reset all decoration attributes.

```swift
ANSIEscapeCode.Decoration.reset // \u{001B}[0m
```

### Reset Background Color

`\u{001B}[39m`: Reset background decoration attributes.

```swift
ANSIEscapeCode.Decoration.resetBackgroundColor // \u{001B}[39m
```

### Bold

`\u{001B}[1m`: Make output bold.

```swift
ANSIEscapeCode.Decoration.bold // \u{001B}[1m
print("bold text".boldOutput) // Print bold text.
```

### Italic

`\u{001B}[3m`: Make output italic.

```swift
ANSIEscapeCode.Decoration.italic // \u{001B}[3m
print("italic text".italicOutput) // Print italic text.
```

### Underline

`\u{001B}[4m`: Make output have underline.

```swift
ANSIEscapeCode.Decoration.underline // \u{001B}[4m
print("underline text".underlineOutput) // Print underline text.
```

### Blink

`\u{001B}[5m`: Make output blink.

```swift
ANSIEscapeCode.Decoration.blink // \u{001B}[5m
print("blinking text".blinkOutput) // Print blinking text.
```

### Text Color

`\u{001B}[(COLOR)m` Set text color on terminal. Check [`TextColor.swift`](https://github.com/flintbox/ANSIEscapeCode/tree/master/Sources/ANSIEscapeCode/TextColor.swift) for available colors.

```swift
ANSIEscapeCode.Decoration.textColor(.red) // \u{001B}[31m
print("red text".color(.red)) // Print red text.
```

### Text 8 Bits Color

`\u{001B}[38;5;(COLOR)m` Set text 8 bits color on terminal. Check [here](https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit) for available colors.

```swift
ANSIEscapeCode.Decoration.text8BitsColor(200) // \u{001B}[38;5;200m
print("orange text".colorFrom8BitsColorSet(208)) // Print orange text.
```

### Text RGB Color

`\u{001B}[38;2;(RED);(GREEN);(BLUE)m` Set text RGB color on terminal. Check [here](https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit) for more.

```swift
ANSIEscapeCode.Decoration.textRGBColor(red: 30, green: 20, blue: 10) // \u{001B}[38;2;30;20;10m
print("mint text".colorFromRGBColorSet(red: 170, green: 240, blue: 209)) // Print mint text.
```

### Background Color

`\u{001B}[(COLOR)m` Set text background color on terminal. Check [`BackgroundColor.swift`](https://github.com/flintbox/ANSIEscapeCode/tree/master/Sources/ANSIEscapeCode/BackgroundColor.swift) for available colors.

```swift
ANSIEscapeCode.Decoration.backgroundColor(.red) // \u{001B}[41m
print("red background".backgroundColor(.red)) // Print text with red background.
```

### Background 8 Bits Color

`\u{001B}[38;5;(COLOR)m` Set text background 8 bits color on terminal. Check [here](https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit) for available colors.

```swift
ANSIEscapeCode.Decoration.background8BitsColor(200) // \u{001B}[48;5;200m
print("orange background".backgroundColorFrom8BitsColorSet(208)) // Print text with orange background.
```

### Background RGB Color

`\u{001B}[48;2;(RED);(GREEN);(BLUE)m` Set text background RGB color on terminal. Check [here](https://en.wikipedia.org/wiki/ANSI_escape_code#24-bit) for more.

```swift
ANSIEscapeCode.Decoration.backgroundRGBColor(red: 30, green: 20, blue: 10) // \u{001B}[48;2;30;20;10m
print("mint background".backgroundColorFromRGBColorSet(red: 170, green: 240, blue: 209)) // Print text with mint background.
```

## Contribute

If you have good idea or suggestion? Please, don't hesitate to open a pull request or send me an [email](mailto:contact@jasonnam.com).

Hope you enjoy building command line tool with ANSIEscapeCode!
