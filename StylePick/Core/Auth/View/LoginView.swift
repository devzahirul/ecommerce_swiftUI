//
//  LoginView.swift
//  StylePick
//
//  Created by Hologram1 on 11/24/23.
//

import SwiftUI


struct AnimateWrapperView<Content: View>: View {
 @State var offset: CGFloat = -100
  let content: () -> Content
  var body: some View {
    ZStack(alignment: .topLeading) {
    content()
    .frame(maxHeight: offset == 0 ? .infinity : 0)
   
    }
    .onAppear {
    withAnimation(.spring()) {
                offset = .zero
            }
    }
  }
}



struct LoginView: View {
   @StateObject var loginViewModel = LoginViewModel()
    
    //MARK: - UI
    var body: some View {
        VStack {
            Spacer()
            //title
            Text("SIGN IN")
                .font(AppFonts.Regular(28))
                .padding(.bottom, 30)
            
            // login email & password input
            VStack(spacing: 16) {
                //email
                BorderTextField(placeholder: "Email", text: $loginViewModel.email)
                
                //password
                SecureField("Password", text: $loginViewModel.password)
                    .padding(9)
                    .font(AppFonts.Bold(16))
                    .background(
                        Rectangle()
                            .stroke(lineWidth: 0.4)
                            .foregroundColor(Color(.systemGray))
                    )
                
            }//:VStack
            .padding(.horizontal)
            
            //forgot password
            Button {
               
            } label: {
                Text("Forget Password")
                    .font(AppFonts.Regular(16))
                    .fontWeight(.regular)
                    .foregroundColor(Color(.systemGray2))
            }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .padding(.top, 6)
            
            
            // login button
            PrimaryButton(title: "LOGIN", isFilled: true, action: {
                 loginViewModel.login()
            })
            .padding(.horizontal)
            .padding(.top, 20)
            
            
            //registration buttom
            PrimaryButton(title: "REGISTER", action: {
                AppEnvironment.router().move(to: .register)
            })
            .padding(.horizontal)
            .padding(.top, 8)
            
            Spacer()
        }//:VStack
        .padding(.horizontal)
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
