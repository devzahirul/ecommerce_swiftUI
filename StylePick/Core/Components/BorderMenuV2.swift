//
//  BorderMenuV2.swift
//  StylePick
//
//  Created by Hologram1 on 11/30/23.
//

import SwiftUI

struct BorderMenuV2<S: StringProtocol, M: MenuItem>:View {
let items: [M]
@Binding var selectedTitle: S?
var cornerRadius: CGFloat = 0
    var body: some View {
        Menu {
            ForEach(items) { item in
              Button(item.title, action: {
                  selectedTitle = item.title as? S
              })
             
             }
        } label: {
          
            HStack {
                Text(selectedTitle ?? "Primary Customer Market")
                .font(AppFonts.Regular(16))
                Spacer()
                Image(systemName: "chevron.down")
            }
            .padding(.horizontal, 9)
             .padding(.vertical, 6)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color(.systemGray2))
            )
        }
        
       
    }
}

struct BorderMenuV2_Previews: PreviewProvider {
    static var previews: some View {
        BorderMenuV2(items: [
        MarkerPlaceMenuItem.init(title: "1", id: 1)
        ], selectedTitle: .constant("1"))
    }
}
