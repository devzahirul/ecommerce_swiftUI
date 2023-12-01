//
//  AppFonts.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI

enum AppFonts {

 static func Black(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Black", size: size)
  }
  static func Bold(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Bold", size: size)
  }
  
  static func ExtraBold(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-ExtraBold", size: size)
  }
  
  static func ExtraLight(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-ExtraLight", size: size)
  }
  
  static func Light(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Light", size: size)
  }
  
  static func Medium(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Medium", size: size)
  }
  
  static func Regular(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Regular", size: size)
  }
  
   static func SemiBold(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-SemiBold", size: size)
  }
  
  static func Thin(_ size: CGFloat) -> Font {
    return Font.custom("RobotoCondensed-Thin", size: size)
  }
  
}
