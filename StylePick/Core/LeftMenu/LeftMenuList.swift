//
//  LeftMenuList.swift
//  StylePick
//
//  Created by Hologram1 on 11/23/23.
//

import SwiftUI



struct LeftMenuList: View {

@StateObject var leftMenuViewModel = LeftMenuViewModel()

    var body: some View {
        VStack {
        //top line
            LineView(lineHeight: 0.5)
                .padding(.top, 60.scale())
                .foregroundColor(Color.gray)
                
            //menu list
            ForEach(leftMenuViewModel.menuList) {item in
                
                //menu item
                VStack(alignment: .leading) {
                   
                    //title
                    Text(item.name)
                    .font(AppFonts.Regular(16))
                        .foregroundColor(item.name == LeftMenuItem.logoutMenu.name ? .red : .white)
                        .padding(12)
                        
                        //under line
                    LineView(lineHeight: 0.5)
                        .foregroundColor(Color.gray)
                }
                .onTapGesture {
                   //menu ontap
                    if item.name == LeftMenuItem.logoutMenu.name {
                        AppEnvironment.auth().logout()
                    }
                }
            }
            
            //spacer
            Spacer()
        }.foregroundColor(Color.white)
    }
}

struct LeftMenuList_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuList()
    }
}
