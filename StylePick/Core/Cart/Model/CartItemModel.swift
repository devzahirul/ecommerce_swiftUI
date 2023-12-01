//
//  CartItemModel.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import Foundation


struct CartItemModel {
  let title: String
  let size: String
  let color: String
  let imagePath: String
}

extension CartItemModel {
  static let MOCK = CartItemModel(title: "UNISEX SAN FRANCISCO GRAPHIC SWEATSHIRT",
   size: "SM", color: "Red", imagePath: "mock")
}
