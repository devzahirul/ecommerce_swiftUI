//
//  SelectOptionView.swift
//  StylePick
//
//  Created by Hologram1 on 11/29/23.
//

import SwiftUI


struct SelectOption: Identifiable {
let id: String
let title: String
}

extension SelectOption {
  static let sellOnlineYes = SelectOption(id: "1", title: "Yes")
  static let sellOnlineNo = SelectOption(id: "2", title: "No")
  static let countryUSA = SelectOption(id: "1", title: "United States")
  static let countryCanada = SelectOption(id: "2", title: "Canada")
  static let international = SelectOption(id: "3", title: "International")
 
}



struct SelectOptionView: View {
    let title: String
    let option: [SelectOption]
    @Binding var selected: SelectOption
    var body: some View {
        HStack(spacing: title.isEmpty ? 10 : 20.scale()) {
          if !title.isEmpty {
            Text(title)
                .foregroundColor(Color(.systemGray2))
                .font(AppFonts.Regular(16))
                }
                
            ForEach(option) { option in
                HStack() {
                
                    if option.id == selected.id {
                        Circle()
                            .frame(width: 18, height: 18)
                    } else {
                        Circle()
                            .stroke(lineWidth: 1)
                            .frame(width: 18, height: 18)
                    }
                    
                    
                    Text(option.title)
                        .foregroundColor(Color(.systemGray2))
                        .font(AppFonts.Regular(16))
                        
                }
                .onTapGesture {
                    withAnimation {
                         selected = option
                    }
                   
                }
            }
            
            
            Spacer()
            
        }
    }
}

struct SelectOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectOptionView(title: "Do you sell online?", option: [
        SelectOption.sellOnlineYes,
        SelectOption.sellOnlineNo
        ], selected: .constant(.init(id: "1", title: "Yes")))
    }
}
