//
//  RegisterView.swift
//  StylePick
//
//  Created by Hologram1 on 11/27/23.
//

import SwiftUI



enum RegisterSteps: Int, Identifiable, CaseIterable, RawRepresentable {
 case step1
 case step2
 case step3
 case step4
 

 
 var id: Int {self.hashValue}
 
 var title: Int {
     switch self {
     case .step1: return 1
     case .step2: return 2
     case .step3: return 3
     case .step4: return 4
     }
 }
}




struct RegisterStepView: View {
  let step: RegisterSteps
   let isReached: Bool
  var body: some View {
    StepNumberCircleView(stepNumber: step.title, isReached: isReached)
  }
  
}


struct RegisterStepLineView: View {
  let step: RegisterSteps
 
  var body: some View {
    StepNumberCircleView(stepNumber: step.title, isReached: false)
  }
  
}



struct RegisterStepContentView<StepContent: View>: View {
 @State var selectedSteps: [RegisterSteps] = [.step1]
   @State var index: Int = 0
 
 let content: (RegisterSteps) -> StepContent
 
  var body: some View {
    VStack {
      Text("SIGN UP")
                .font(AppFonts.Regular(28))
                .padding(.bottom, 30)
                .padding(.top, 30)
                
                
           //top stepview
            HStack(spacing: .zero) {
                ForEach(RegisterSteps.allCases) { step in
                
                if step != .step1 {
                       ZStack(alignment: .leading) {
                        LineView()
                        .foregroundColor(Color(.systemGray4))
                        
                        LineView()
                        .foregroundColor(Color.black)
                        .frame(maxWidth: selectedSteps.contains(step) ? .infinity : 0, alignment: .leading)
                        
                        }
                    }
                    RegisterStepView(step: step, isReached: selectedSteps.contains(step))
                    
                }
            }.padding(.horizontal)
        
        
            content(.init(rawValue: index)!)
        
            //next previous button View
            HStack {
                PrimaryButton(title: "PRV", height: 32, isFilled: true, disablled: index == 0) {
                    withAnimation(.linear) {
                       
                        if index > 0 {
                         selectedSteps.remove(at: index)
                      index -= 1
                      }
                      
                    }
                   
                }.frame(width: 60)
                
              Spacer()
              
              PrimaryButton(title: "NEXT", height: 32, isFilled: true, disablled: index == 3) {
                  withAnimation(.linear) {
                     if index < 3 {
                      index += 1
                  selectedSteps.append(RegisterSteps.allCases[index])
                  }
                  }
                  
                }.frame(width: 60)
            }.padding(.horizontal)
    }
  }
}


struct RegisterView: View {

   
  

    var body: some View {
        ScrollView(showsIndicators: false) {
           VStack {
            RegisterStepContentView { currentStep  in
                VStack {
                switch currentStep {
                case .step1:
                     RegisterStep1()
                case .step2:
                      RegisterStep2()
                case .step3:
                      RegisterStep3()
                case .step4:
                     RegisterStep4()
                }
                Spacer()
                }
                
            }
             
             VStack {
             
             }.frame(height: 320)
            }
          
        }.background(Color("cart_bg").opacity(0.4))
    }
}









struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
