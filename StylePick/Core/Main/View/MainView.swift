//
//  HomeView.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI

struct MainView: View {
@StateObject var mainViewModel = MainViewModel()


    var body: some View {
        NavigationView {
            AppPageComponent {
             
            VStack(spacing: 0) {
             
               switch mainViewModel.selectedRouter {
               case .home:  AnimateWrapperView {
                   HomeView()
               }
                 case .userHome: AnimateWrapperView{UserHomeView()}
                 case .login:  AnimateWrapperView{LoginView()}
                 case .cart: AnimateWrapperView{CartView()}
                 case .register: AnimateWrapperView{RegisterView()}
                 default:  EmptyView()
               }
               
             
            }.frame(maxHeight: .infinity)
            }
          .navigationBarHidden(true)
          .navigationBarTitleDisplayMode(.inline)
          
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
