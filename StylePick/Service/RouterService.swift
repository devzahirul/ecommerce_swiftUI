//
//  RouterService.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import Foundation
import Combine


enum Router {
  case login
  case home
  case userHome
  case vendor
  case cart
  case message
  case favorite
  case register
}


protocol RouterService {
  var currentRouter: CurrentValueSubject<Router?, Error> { get }
  func move(to  route: Router)
}


class AppRouterService: RouterService {

  static let shared = AppRouterService()
  
    var currentRouter: CurrentValueSubject<Router?, Error> = .init(nil)
    
    func move(to route: Router) {
        currentRouter.value = route
    }

}
