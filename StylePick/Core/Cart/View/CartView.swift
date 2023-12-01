//
//  CartView.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import SwiftUI




struct CartView: View {

@State var couponeCodeInput: String = ""

    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(alignment: .leading) {
                    Text("SHOPPING CART")
                        .font(AppFonts.Regular(16))
                    
                    Divider()
                        .padding(.bottom, 12)
                }
                ForEach(1...2, id: \.self) { item in
                    CartItemViewV2(index: item)
                       .padding(.bottom, 8)
                }
            }
            .padding()
            .background(
             RoundedRectangle(cornerRadius: 6)
             .foregroundColor(Color.white)
            )
            .padding(.horizontal, 10)
            .padding(.vertical, 10)
            
            VStack {
                VStack(alignment: .leading) {
                    Text("SUMMARY")
                        .font(AppFonts.Regular(16))
                    
                    Divider()
                        .padding(.bottom, 12)
                }
                
                HStack {
                 Text("Subtotal")
                 Spacer()
                  Text("145.56 USD")
                }.font(AppFonts.Regular(16))
                .padding(.top, 10)
               
               
                 HStack(spacing: 0) {
                   TextField("Enter coupon code ...", text: $couponeCodeInput)
                   .padding(.horizontal, 24)
                   .padding(.vertical, 12)
                   .background(
                    Rectangle()
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color.black)
                   )
                   
                   Image(systemName: "checkmark")
                   .foregroundColor(.white)
                   .padding(15)
                   .background(Color.black)
                   
                }.font(AppFonts.Regular(14))
                .padding(.top, 14)
                
               Button {
               
               } label: {
                   HStack {
                    Spacer()
                   
                   Text("PROCED TO CHECKOUT")
                   .font(AppFonts.Medium(14))
                   .padding(.vertical, 12)
                   Spacer()
                   }.foregroundColor(Color.white)
                   .background(Color.black)
                   
               }.padding(.top, 10)
               
            }
            .padding()
            .background(
             RoundedRectangle(cornerRadius: 6)
             .foregroundColor(Color.white)
            )
            .padding(.horizontal, 10)
            
            
        }.background(Color("cart_bg"))
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}


//protocol
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
 let temporaryA = a
 a = b
 b = temporaryA
}
