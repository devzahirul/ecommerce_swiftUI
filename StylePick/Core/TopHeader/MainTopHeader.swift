//
//  MainTopHeader.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import SwiftUI


struct MainTopHeader: View {
   @Binding var menuOpenState: Bool
    var body: some View {
        HStack {
            HStack(spacing: 20) {
               AnimatedMenuIconView{
                withAnimation(.easeInOut) {
                menuOpenState.toggle()
                }
               }
               .padding(.leading, 8)
               .frame(width: 30)
               
                
                Text("STYLE PICK")
                    .font(AppFonts.ExtraBold(21))
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            HStack(spacing: 0) {
                HStack(spacing: 0) {
                    Image(systemName: "cart")
                        .foregroundColor(Color(.systemGray))
                        .frame(height: 50)
                        .padding(.horizontal)
                        .background(Color.white)
                    Rectangle()
                        .frame(width: 0.5)
                }
                HStack(spacing: 0) {
                    Image(systemName: "ellipsis.message")
                        .foregroundColor(Color(.systemGray))
                        .frame(height: 50)
                        .padding(.horizontal)
                        .background(Color.white)
                    Rectangle()
                        .frame(width: 0.5)
                }
                HStack(spacing: 0) {
                    Image(systemName: "heart")
                        .foregroundColor(Color(.systemGray))
                        .frame(height: 50)
                        .padding(.horizontal)
                        .background(Color.white)
                    Rectangle()
                        .frame(width: 0.5)
                }
                
            }
        }
        .frame(height: 52)
        .background(Color.black)
    }
}

struct MainTopHeader_Previews: PreviewProvider {
    static var previews: some View {
        MainTopHeader(menuOpenState: .constant(false))
    }
}
