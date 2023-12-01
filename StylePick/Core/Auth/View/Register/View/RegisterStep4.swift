//
//  RegisterStep4.swift
//  StylePick
//
//  Created by Hologram1 on 11/28/23.
//

import SwiftUI

struct RegisterStep4: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 4)
                Image(systemName: "checkmark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 34, height: 20)
            }.frame(width: 70, height: 70)
            Text("Congratulations")
            .font(AppFonts.Regular(20))
        }
    }
}

struct RegisterStep4_Previews: PreviewProvider {
    static var previews: some View {
        RegisterStep4()
    }
}
