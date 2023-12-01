//
//  ProductItem.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI

struct ProductItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ZStack(alignment: .topTrailing) {
                TabView {
                    Image("product9")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 234)
                        .clipShape(Rectangle())
                    Image("product10")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 234)
                        .clipShape(Rectangle())
                    Image("product11")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 234)
                        .clipShape(Rectangle())
                }
                .frame(height: 234)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 24)
                    .font(AppFonts.ExtraLight(20))
                    .foregroundColor(Color.white)
                    .padding(10)
                
            }
            
            HStack {
                Text("Davi and Dani")
                    .font(AppFonts.Regular(14))
                    
                Spacer()
                Text("MDJ12041")
                    .font(AppFonts.ExtraLight(10))
                    
                    
                   
            }.padding(.top)
            .padding(.bottom, 4)
           
             LineView(lineHeight: 0.4)
           
            Text("Unisex San Francisco Graphic Sweater")
                .font(AppFonts.Light(12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                .padding(.top, 2)
            
            Text("21.5")
                .font(AppFonts.Light(12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 2)
            
            HStack {
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(Color(.systemGray4))
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(Color.green)
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(Color.pink)
                Spacer()
            }
            
            .padding(.top, 6)
            
            
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid(columns: [.init(.flexible(), spacing: 14), .init(.flexible(), spacing: 12)], spacing: 12) {
             ProductItem()
             ProductItem()
        }.padding(.horizontal, 10)
       
        
    }
}


