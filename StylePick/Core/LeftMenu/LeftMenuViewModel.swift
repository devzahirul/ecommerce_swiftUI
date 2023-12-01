//
//  LeftMenuViewModel.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI
import Combine


class LeftMenuViewModel: ObservableObject {

   private var bag = Set<AnyCancellable>()
 
   @Published var currentUser: User? = nil
   
   @Published var menuList: [LeftMenuItem] = []
   
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
        self.menuList =  LeftMenuItem.MOCK_ITEMS
     return
     }
     
     self.menuList = LeftMenuItem.MOCK_ITEMS_FOR_USERS
   }
   
}


struct LeftMenuItem: Identifiable {
    let id = NSUUID().uuidString
    let name: String
}

extension LeftMenuItem {
    static let MOCK_ITEMS_FOR_USERS: [LeftMenuItem] = [
        .init(name: "Vendors"),
        .init(name: "New In"),
        .init(name: "Best of Best"),
        .init(name: "Promotions"),
        .init(name: "Premium"),
        .init(name: ""),
        logoutMenu
    ]
    static let logoutMenu = LeftMenuItem(name: "Logout")
    static let MOCK_ITEMS: [LeftMenuItem] = [
        .init(name: "Vendors"),
        .init(name: "New In"),
        .init(name: "Best of Best"),
        .init(name: "Promotions"),
        .init(name: "Premium"),

    ]
}


