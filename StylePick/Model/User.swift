//
//  User.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import Foundation


struct User {
 let firstName: String
 let lastName: String
 let email: String
}


extension User {
static let MOCK = User(firstName: "zahirul", lastName: "Islam", email: "jislam150@gmail.com")
}
