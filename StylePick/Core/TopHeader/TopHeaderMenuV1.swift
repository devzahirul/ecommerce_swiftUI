//
//  TopHeaderMenuV1.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//
import SwiftUI

struct TopHeaderMenuV1: View {
@StateObject var menuViewModel = TopHeaderMenuViewModel()
@Binding var menuOpenState: Bool

    var body: some View {
        VStack(spacing: 0) {
          //Hstack
          HStack {
          
           //left menu & title
           HStack(spacing: 16) {
              AnimatedMenuIconView {
               menuOpenState.toggle()
              }
              .frame(width: 32)
              
             Image("logo")
              .resizable()
              .scaledToFit()
              .frame(width: 100)
              .clipped()
              .onTapGesture {
                 
                  AppEnvironment.router().move(to: AppEnvironment.auth().currentUser.value != nil ? .userHome : .home)
              }
           }
           
           //spacer
           Spacer()
           
           //right menus
           HStack(spacing: 0) {
            
           ForEach(menuViewModel.topRightMenus, id: \.self) {item in
             TopHeaderRightMenuItem(menu: item)
                   .onTapGesture {
                       if item == TopHeaderRightMenu.LogIn {
                         AppEnvironment.router().move(to: .login)
                       }
                       
                       
                       if item == TopHeaderRightMenu.SignUp {
                         AppEnvironment.router().move(to: .register)
                       }
                       
                       
                       if item == TopHeaderRightMenu.Cart {
                         AppEnvironment.router().move(to: .cart)
                       }
                   }
           }
           /*Rectangle()
            .foregroundColor(Color(.systemGray5))
           .frame(width: 1)*/
           
           }//.background(Color.white)
           
          }//:HStack
          
          
          
          //underline
          LineView(lineHeight: 1)
          .foregroundColor(Color(.systemGray5))
        }
        .foregroundColor(Color.white)
        .frame(height: 52)
        .background(Color.black)
        
    }
}


struct TopHeaderRightMenuItem: View {
  let menu: TopHeaderRightMenu
 var body: some View {
  HStack(spacing: 0) {
  Rectangle()
    .frame(width: 1)
    .foregroundColor(Color(.systemGray5))
     if menu.title.isEmpty {
       Image(systemName: menu.image)
       .foregroundColor(Color(.systemGray))
        .font(.title3)
        .padding(.horizontal)
        .frame(height: 50)
       .background(Color.white)
     } else {
    Text(menu.title)
    .font(AppFonts.Regular(16))
    .foregroundColor(Color(.systemGray))
    .padding()
    }
    
  }
  .frame(height: 52)
  
 }
}


struct TopHeaderMenuV1_Previews: PreviewProvider {
    static var previews: some View {
        TopHeaderMenuV1.init(menuOpenState: .constant(false))
        .frame(height: 56)
        .preferredColorScheme(.dark)
    }
}
