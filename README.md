# DynamicFonts

[![CI Status](http://img.shields.io/travis/DenisLitvin/DynamicFonts.svg?style=flat)](https://travis-ci.org/DenisLitvin/DynamicFonts)
[![Version](https://img.shields.io/cocoapods/v/DynamicFonts.svg?style=flat)](http://cocoapods.org/pods/DynamicFonts)
[![License](https://img.shields.io/cocoapods/l/DynamicFonts.svg?style=flat)](http://cocoapods.org/pods/DynamicFonts)
[![Platform](https://img.shields.io/cocoapods/p/DynamicFonts.svg?style=flat)](http://cocoapods.org/pods/DynamicFonts)

## Usage

There are two static methods on `UIFont`:
1. `UIFont.fixSized(_ size: CGFloat, family: FontTextFamily)` - creates fix sized font with required font size and font family
2. `UIFont.dynamicallySized(for textStyle: FontTextStyle, family: FontTextFamily)` - creates dynamically sized font for certain text style.

**Parameters for `FontTextStyle`:**
- `head(type)`
- `body(type)`
- `caption(type)`

`type` represents the type of text you can choose from the following:

- extraSmall
- small
- medium
- large

**Parameters for `FontTextFamily`: All the embedded font families, if you want it to support custom one, add `case` to `FontTextFamily` enumeration**

Also you can use `.bolded` and `.italicized` on the font.

## Example
`textLabel.font = .dynamicallySized(for: .head(.medium), family: .avenir).bolded`

## Installation

**CocoaPods:**

Add the line `pod "DynamicFonts"` to your `Podfile`

**Manual:**

Clone the repo and drag the file `DynamicFonts.swift` into your Xcode project.
## Platform support

- iOS 8 and above

## Author

DenisLitvin, den.litvinn@gmail.com

## License

DynamicFonts is available under the MIT license. See the LICENSE file for more info.
