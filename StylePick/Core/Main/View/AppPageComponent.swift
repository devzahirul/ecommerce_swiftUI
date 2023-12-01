//
//  AppPageComponent.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI

struct AppPageComponent<Content: View>: View {
    let content: () -> Content
    
    @State private var menuState = false
    
    var body: some View {
        VStack(spacing: 0) {
            //top header
            TopHeaderMenuV1(menuOpenState: $menuState)
            
            //content
            ZStack(alignment: .leading) {
                //content that pass
                content()
                //show menu view when menu clicked
                if menuState {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .edgesIgnoringSafeArea(.bottom)
                            
                        LeftMenuList()
                        
                    }.frame(width: 220.scale())
                }
            }//:ZStack
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
        .edgesIgnoringSafeArea(.bottom)
    }
}



