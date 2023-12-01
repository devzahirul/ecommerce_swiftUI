//
//  AnimatedMenuIconView.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import SwiftUI


struct LineView: View {
  var lineHeight = 2.5
  var body: some View {
   Rectangle()
   .frame(height: lineHeight)
  }
}


struct AnimatedMenuIconView: View {
    let action: () -> Void
    var color: Color = .white
    @State var tapToggle = false
    @State var rotateStart = false
    
    var body: some View {
        Button {
       
          withAnimation {
           tapToggle.toggle()
           action()
           }
           withAnimation(.linear(duration: 0.3).delay(!rotateStart ? 0.4 : 0)) {
           rotateStart.toggle()
           }
        } label: {
            ZStack(alignment: .leading) {
            LineView()
            .offset(y: rotateStart ? 0 : -8)
            .rotationEffect(.degrees(rotateStart ? 45 : 0))
                .frame(width: 30)
                HStack {
                if tapToggle {
                Spacer()
                }
            LineView()
             .offset(x: tapToggle ? 0 : 0, y: 0)
             //.opacity(tapToggle ? 0 : 1)
             .frame(width: tapToggle ? 0 : 30)
             }
                
                
            LineView()
            .offset(y: rotateStart ? 0 : 8)
            .rotationEffect(.degrees(rotateStart ? 320 : 0))
                .frame(width: rotateStart ? 30 : 20)
                
                Rectangle()
                .fill(Color.gray.opacity(0.001))
                
        }
        .foregroundColor(color)
        }
        
    }
}

struct AnimatedMenuIconView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedMenuIconView(action: {}, color: .black)
    }
}
