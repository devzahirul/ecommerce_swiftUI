//
//  RegisterStep1.swift
//  StylePick
//
//  Created by Hologram1 on 11/28/23.
//

import SwiftUI



struct BorderTextField<S: StringProtocol>: View {
  let placeholder: S
  @Binding var text: String
  
  var body: some View {
    TextField(placeholder, text: $text)
    .font(AppFonts.Regular(16))
                    .setBorder()
  }
}


struct SecureBorderTextField<S: StringProtocol>: View {
  let placeholder: S
  @Binding var text: String
  
  var body: some View {
    SecureField(placeholder, text: $text)
    .font(AppFonts.Regular(16))
                    .padding(8)
                    .background(
                        Rectangle()
                            .stroke(lineWidth: 0.4)
                            .foregroundColor(Color(.systemGray))
                    )
  }
}


struct RegisterStep1: View {
   @State var email = ""
    var body: some View {
         VStack {
         Text("Basic information")
         .font(AppFonts.Regular(20))
         
         VStack(spacing: 12) {
             BorderTextField(placeholder: "First Name", text: $email)
             BorderTextField(placeholder: "Last Name", text: $email)
             BorderTextField(placeholder: "Email", text: $email)
             SecureBorderTextField(placeholder: "Password", text: $email)
            }
                   
         }.padding()
    }
}

struct RegisterStep1_Previews: PreviewProvider {
    static var previews: some View {
        RegisterStep1()
    }
}
