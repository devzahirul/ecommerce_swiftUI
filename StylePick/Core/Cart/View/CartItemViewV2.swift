//
//  CartItemViewV2.swift
//  StylePick
//
//  Created by Hologram1 on 11/30/23.
//

import SwiftUI

struct CartItemViewV2: View {
   let index: Int
    var body: some View {
     VStack(spacing: 12) {
        HStack(alignment: .top) {
          Image("product\(index)")
          .resizable()
          .scaledToFill()
          .frame(width: 68, height: 78)
          .clipped()
          //right vstack
          VStack(alignment: .leading, spacing: 10) {
          //style & price
           HStack {
            Text("MDJ12041")
            .font(AppFonts.Light(14))
           Spacer()
           Text("$89")
           }
           
           //title
           Text("Unisex San Francisco Sweatshirt")
           .padding(.bottom, 4)
           //color & qty & delete hstack
           HStack(alignment: .top, spacing: 12) {
             //item color
             Circle()
             .foregroundColor((1...2).randomElement() == 1 ? .red : .gray)
             .frame(width: 10, height: 10)
             .padding(2)
             .overlay {
              Circle()
              .stroke(lineWidth: 0.5)
             }
             
            Text("Red")
            Text("XL")
            
            Spacer()
            
            //qty & delete HStack
            HStack {
            Spacer()
            BorderMenuV2(items: [
                MarkerPlaceMenuItem(title: "1", id: 1),
                .init(title: "2", id: 2),
                .init(title: "3", id: 3),
                .init(title: "4", id: 4),
                .init(title: "5", id: 5)
             ] , selectedTitle: .constant("3"), cornerRadius: 4)
             .frame(width: 66)
             .foregroundColor(Color.black)
             
             Image(systemName: "trash")
             .font(.system(size: 10))
             .padding(8)
             .background(
              RoundedRectangle(cornerRadius: 4)
              .stroke(lineWidth: 0.5)
              .foregroundColor(Color(.systemGray3))
             )
             
             
           }
            
           }
           
          
          }
          
          Spacer()
        }//HStack
        
        //underline
       Divider()
        
        
        }.font(AppFonts.Regular(14))
    }
}

struct CartItemViewV2_Previews: PreviewProvider {
    static var previews: some View {
        CartItemViewV2(index: 1)
    }
}
