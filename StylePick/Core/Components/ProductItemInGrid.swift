//
//  ProductItemInGrid.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI

struct ProductItemInGrid: View {
let columns = [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)]

    var body: some View {
       
             LazyVGrid(columns: columns, spacing: 30) {
                 ForEach(1...12, id: \.self) { value in
                     ProductItem()
                     //.foregroundColor(Color.white)
                 }
             }
         
    }
}

struct ProductItemInGrid_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemInGrid()
    }
}
