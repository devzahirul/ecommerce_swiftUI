//
//  CartItemView.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import SwiftUI

struct CartItemView: View {
    let model: CartItemModel
    
    var body: some View {
        VStack(spacing: 16) {
           
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(model.title)
                        .font(.system(size: 16))
                        //.fontWeight(.bold)
                    
                    Text("Color: \(model.color)")
                     .font(.subheadline)
                        //.fontWeight(.bold)
                    Text("Size: \(model.size)")
                     .font(.subheadline)
                        //.fontWeight(.bold)
                        .padding(.top, 5)
                    HStack(spacing: 30) {
                        Button {
                            
                        } label: {
                            Text("-")
                            .foregroundColor(.black)
                        }
                        Text("1")
                        Button {
                            
                        } label: {
                            Text("+")
                            .foregroundColor(.black)
                        }
                    } .font(.title3)
                        //.fontWeight(.bold)
                        .padding(.top, 5)
                }
                
                Spacer()
                
                Image(model.imagePath)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 150)
                   
                   
                
            }//.foregroundColor(Color("cart_font"))
            
            LineView(lineHeight: 0.5)
                .foregroundColor(Color(.systemGray))
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(model: CartItemModel.MOCK)
    }
}
