//
//  PrimaryButton.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI

struct PrimaryButton: View {
   let title: String
   var height: CGFloat = 42
   var isFilled: Bool = false
   var disablled = false
   let action: () -> Void
   
   
    
   
   
    var body: some View {
       if isFilled {
       Button {
               action()
            } label: {
            
                HStack {
                    Spacer()
                    Text(title)
                        .foregroundColor(Color.white)
                        .font(AppFonts.Regular(18))
                        
                    Spacer()
                }
                .frame(height: height)
                .background(Color.black)
                .opacity(disablled ? 0.3 : 1)
            }
            .disabled(disablled)
            
       } else {
       
        Button {
              action()
            } label: {
                HStack {
                    Spacer()
                    Text(title)
                        .foregroundColor(Color.black)
                        .font(AppFonts.Regular(18))
                    Spacer()
                }
                .frame(height: height)
                .background(
                    Rectangle()
                        .stroke(lineWidth: 1.5)
                        .foregroundColor(Color.black)
                )
            }.disabled(disablled)
        }
    }
}


