//
//  ScaleExtension.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import UIKit



fileprivate var scaleRation = UIScreen.main.bounds.width / 375

extension Int {
  func scale() -> CGFloat {
    CGFloat(self) * CGFloat(scaleRation)
  }
}
