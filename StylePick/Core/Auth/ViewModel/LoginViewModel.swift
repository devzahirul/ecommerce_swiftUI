//
//  LoginViewModel.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI


class LoginViewModel: ObservableObject {
  @Published var email: String = User.MOCK.email
  @Published var password: String = "123456"
  
  func login() {
    AppEnvironment.auth().login(email: email, password: password)
  }
}
