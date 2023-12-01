//
//  AllProductView.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI

struct AllProductView: View {
    var body: some View {
        ScrollView {
          ProductItemInGrid()
          
          //.foregroundColor(Color(.systemGray))
          .padding(.horizontal, 12)
        }.onAppear {
         UIFont.familyNames.sorted( by: { $0 < $1 } ).forEach({ print("\($0)"); UIFont.fontNames(forFamilyName: "\($0)").sorted(by: { $0 < $1 } ).forEach({ print("     \($0)") }) })
        }
    }
}

struct AllProductView_Previews: PreviewProvider {
    static var previews: some View {
        AllProductView()
    }
}
