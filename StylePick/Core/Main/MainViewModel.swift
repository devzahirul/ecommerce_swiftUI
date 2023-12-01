//
//  HomeViewModel.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import Foundation
import Combine
import SwiftUI


class MainViewModel: ObservableObject {
    private var bag = Set<AnyCancellable>()
    
    @Published var selectedRouter: Router = .home
 
   init() {
   subscribe()
   
   }
   
   func subscribe() {
       AppEnvironment.router().currentRouter.sink(receiveCompletion: { _ in
           
       }, receiveValue: {[weak self] router in
           guard let router = router else {return }
           withAnimation {
               self?.selectedRouter = router
           }
           
       }).store(in: &bag)
   }
   
}

