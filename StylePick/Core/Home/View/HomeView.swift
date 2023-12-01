//
//  HomeView.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
          VStack {
          //Title & subtitle
          VStack(spacing: 12) {
             Text("ELEVATE YOUR SHOPPING EXPERIENCE")
             .font(AppFonts.Bold(16))
             .fontWeight(.heavy)
             
             Text("SIGN UP TO SHOP")
             .underline()
             .font(AppFonts.ExtraLight(16))
             .foregroundColor(Color(.systemGray))
             .onTapGesture {
                 AppEnvironment.router().move(to: .register)
             }
             
             
          }.foregroundColor(Color.white)
           .padding(.vertical, 44)
           
          
          // Horizontal Slider of Images
              ScrollView(.horizontal, showsIndicators: false) {
                  HStack(spacing: 16) {
                  ForEach(1...7, id: \.self) {item in
                    Image("product\(item)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 170)
                    }
                    
                  }.frame(height: 190)
              }
              .padding(.bottom, 34)
              .background(Color.gray.opacity(0.1))
    
    
            //Bands we work with
             VStack {
               HStack {
                 Spacer()
                 Text("BRANDS WE WORK WITH")
                .font(AppFonts.Bold(16))
                .foregroundColor(Color.white)
                Spacer()
                 }.padding(.top, 32)
                 
                 ScrollView(.horizontal, showsIndicators: false) {
                     HStack(spacing: 100) {
                       ForEach(2...3, id: \.self) {item in
                        Image("brand\(item)")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 16)
                        
                       }
                       
                       
                     }.frame(height: 60)
                 }//.padding(.top)
                 .padding(.horizontal, 50)
                 
                 Spacer()
                 
                 LineView(lineHeight: 0.4)
                 .foregroundColor(Color(.systemGray5))
             }.frame(height: 140)
             .background(Color.black)
             
             //New in StylePick
             VStack {
               HStack {
                 Spacer()
                 Text("NEW IN STYLE PICK")
                .font(AppFonts.Bold(24))
                .foregroundColor(Color.white)
                Spacer()
                 }.padding(.top, 32)
                 
                ProductItemInGrid()
                .foregroundColor(.white)
                
                .padding(.bottom, 28)
                 
                 Spacer()
                 
                 LineView(lineHeight: 0.4)
                 .foregroundColor(Color(.systemGray5))
             }.frame(maxHeight: .infinity)
             .background(Color.black)
             
             
             
          }
        }
        .frame(maxWidth: .infinity, alignment: .bottom)
        .background(Color.black)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
