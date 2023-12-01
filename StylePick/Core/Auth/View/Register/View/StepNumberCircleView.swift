//
//  StepNumberCircleView.swift
//  StylePick
//
//  Created by Hologram1 on 11/27/23.
//

import SwiftUI

struct StepNumberCircleView: View {
    let stepNumber: Int
    var isReached: Bool = false
    var body: some View {
        ZStack {
           if isReached {
           
           Text("\(stepNumber)")
           .font(.footnote)
           .foregroundColor(Color.white)
           .padding(12)
           .background(
               Circle()
                
           )
           
           } else {
           
           Text("\(stepNumber)")
           .font(.footnote)
           .foregroundColor(Color.gray)
           .padding(9)
           .background(
               Circle()
                 .stroke(lineWidth: 3)
           )
           
           }
        }
    }
}

struct StepNumberCircleView_Previews: PreviewProvider {
    static var previews: some View {
        StepNumberCircleView(stepNumber: 1, isReached: false)
    }
}
