//
//  File.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import Foundation


enum AppEnvironment: String {
  case MOCK
  case Production
  case Staging
  
  
  static func getEnvironment() -> AppEnvironment {
     .MOCK
  }
  
  
  static func auth() -> AuthService {
      switch getEnvironment() {
      case .MOCK:
          return MockAuthService.shared
      case .Production:
          return MockAuthService()
      case .Staging:
          return MockAuthService()
      }
  }
  
  
  static func router() -> RouterService {
    AppRouterService.shared
  }
  
}



