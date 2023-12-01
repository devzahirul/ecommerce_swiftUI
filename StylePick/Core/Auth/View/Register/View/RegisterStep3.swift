//
//  RegisterStep3.swift
//  StylePick
//
//  Created by Hologram1 on 11/28/23.
//

import SwiftUI

struct RegisterStep3: View {
   @State var email = ""
    @State var selectMenu: String? = nil
    @State var countryOption: SelectOption = .countryUSA
    
    var body: some View {
    
         VStack {
          Text("Shipping & Billing Address")
          .font(AppFonts.Regular(20))
          //.padding(.top, 24)
         
         VStack(spacing: 12) {
           SelectOptionView(title: "", option: [
             .countryUSA,
             .countryCanada,
             .international
             ], selected: $countryOption)
         Group {
         BorderTextField(placeholder: "Store No.", text: $email)
         
         BorderTextField(placeholder: "Attention", text: $email)
         
         BorderTextField(placeholder: "Address", text: $email)
         
         BorderTextField(placeholder: "Unit #", text: $email)
         }
         BorderTextField(placeholder: "City", text: $email)
         
         BorderTextField(placeholder: "State", text: $email)
         
         BorderTextField(placeholder: "Zip Code", text: $email)
         
         BorderTextField(placeholder: "Country", text: $email)
         
         BorderTextField(placeholder: "Phone", text: $email)
         
         BorderTextField(placeholder: "Fax", text: $email)
            
             
        }
                   
         }.padding()
    }
    
}

struct RegisterStep3_Previews: PreviewProvider {
    static var previews: some View {
        RegisterStep3()
    }
}
