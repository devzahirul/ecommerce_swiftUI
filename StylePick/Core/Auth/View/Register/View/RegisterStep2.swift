//
//  RegisterStep2.swift
//  StylePick
//
//  Created by Hologram1 on 11/28/23.
//

import SwiftUI
import PhotosUI


protocol MenuItem: Identifiable {
  associatedtype S: StringProtocol
  var title: S { get }
}


struct MarkerPlaceMenuItem: MenuItem {
    var title: String
    var id: Int
}


struct BorderMenu<S: StringProtocol, M: MenuItem>:View {
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
            .padding(9)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color(.systemGray))
            )
        }
        
        .foregroundColor(Color.gray)
    }
}



/*
struct BorderFileUpload: View {
@State var photo: PhotosPickerItem? = nil


    var body: some View {
       ZStack {
          
            HStack {
                PhotosPicker(selection: $photo, label: {
                    Text("Choose File")
                      .foregroundColor(Color.black)
                     .font(AppFonts.Regular(16))
                     .padding(3)
                     .padding(.horizontal, 5)
                     .background(
                Rectangle()
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color.black)
            )
                })
                 Text(photo?.itemIdentifier ?? "No file chosen")
                 .font(AppFonts.Regular(16))
                Spacer()
                
            }
            .padding(9)
            .background(
                Rectangle()
                    .stroke(lineWidth: 0.4)
                    .foregroundColor(Color(.systemGray))
            )
        }
        
        .foregroundColor(Color.gray)
    }
}
*/


struct RegisterStep2: View {
    
    @State var email = ""
    @State var selectMenu: String? = nil
    @State var onlineSellOption: SelectOption = SelectOption.sellOnlineYes
    
    var body: some View {
         VStack {
         Text("Company & Business Information")
         .font(AppFonts.Regular(20))
         
         VStack(spacing: 12) {
             BorderMenu(items: [
                MarkerPlaceMenuItem(title: "All", id: 1),
                .init(title: "African", id: 2),
                .init(title: "Asian", id: 3),
                .init(title: "Caucasian", id: 4),
                .init(title: "Other", id: 5)
             ] , selectedTitle: $selectMenu)
             
             BorderTextField(placeholder: "Company Name", text: $email)
             
             BorderTextField(placeholder: "Seller Permit Number", text: $email)
             
            // BorderFileUpload()
             
             SelectOptionView(title: "Do you sell online?", option: [
             SelectOption.sellOnlineYes,
             SelectOption.sellOnlineNo
             ], selected: $onlineSellOption)
            }
                   
         }.padding()
    }
}

struct RegisterStep2_Previews: PreviewProvider {
    static var previews: some View {
        RegisterStep2()
    }
}
