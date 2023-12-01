//
//  View+Modifiers.swift
//  StylePick
//
//  Created by Hologram1 on 12/1/23.
//

import SwiftUI


extension View {

    @ViewBuilder
    func setBorder() -> some View {
        self.padding(8)
            .font(AppFonts.Bold(16))
            .background (
                Rectangle()
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color(.systemGray))
            )
    }
    
    
}
