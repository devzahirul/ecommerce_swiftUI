//
//  UserHomeView.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI

struct UserHomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
          VStack {
            
            //top section
            VStack(spacing: 28) {
             Text("SPOTLIGHT ON NEW COLLECTION")
             .font(AppFonts.Bold(20))
             .padding(.top, 40)
             
             HStack {
               Text("Davi and Dani")
               LineView(lineHeight: 14)
               .frame(width: 1)
               Text("Mello")
                LineView(lineHeight: 14)
               .frame(width: 1)
               Text("Adora")
                LineView(lineHeight: 14)
               .frame(width: 1)
               Text("Hers and Mine")
             }.font(AppFonts.Regular(12))
             .padding(.top, -14)
             
             
             Image("banner2")
             .resizable()
             .scaledToFill()
             .padding(.top, -10)
             .padding(.horizontal)
            
             
            }
           LineView(lineHeight: 0.2)
             .padding(.top, 16)
          
          //only in stylepick
          VStack(spacing: 28) {
             Text("ONLY ON STYLE PICK")
             .font(AppFonts.Regular(18))
             .padding(.top, 40)
             .foregroundColor(Color(.systemGray2))
             
             ProductItemInGrid()
             .padding(.horizontal)
           
             
            }
            LineView(lineHeight: 0.2)
             .padding(.top, 16)
          
          }//VStack
          
        }.background(Color("cart-bg"))
    }
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView()
       
    }
}
