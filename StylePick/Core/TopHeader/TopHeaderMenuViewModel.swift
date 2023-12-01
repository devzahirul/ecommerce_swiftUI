//
//  TopHeaderMenuViewModel.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//


import SwiftUI
import Combine

enum TopHeaderRightMenu {
  case LogIn
  case SignUp
  case Message
  case Cart
  case FavList
  
  var title: String {
      switch self {
      case .LogIn:
         return  "LOGIN"
      case .SignUp:
          return "SIGN UP"
      case .Message:
          return ""
      case .Cart:
          return ""
      case .FavList:
          return ""
      }
  }
  
  var image: String {
      switch self {
      case .LogIn:
         return  ""
      case .SignUp:
          return ""
      case .Message:
          return "ellipsis.message"
      case .Cart:
          return "cart"
      case .FavList:
          return "heart"
      }
  }
  
  
}


class TopHeaderMenuViewModel: ObservableObject {

   private var bag = Set<AnyCancellable>()
 
   @Published var currentUser: User? = User.MOCK
   
   @Published var topRightMenus: [TopHeaderRightMenu] = []
   
   init() {
   subscribe()
   setupMenuList()
   }
   
   func subscribe() {
       AppEnvironment.auth().currentUser.sink {[weak self] user in
           self?.currentUser = user
           self?.setupMenuList()
       }.store(in: &bag)
   }
   
   private func setupMenuList() {
     guard let _ = currentUser else {
        self.topRightMenus =  [.LogIn, .SignUp]
     return
     }
     
     self.topRightMenus = [
      .Message, .Cart, .FavList
     ]
   }
   
}

