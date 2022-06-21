//
//  OnBoding2.swift
//  Profile
//
//  Created by Khulood  on 07/11/1443 AH.
//

import SwiftUI

struct OnBoding2: View {
    @State var isShowOnBording2Screen = false

    var body: some View {
        
      
        
            VStack{
            Lottie(fileName: "lf30_editor_rghixdmm")
                //.resizable()
                .frame(width: 375, height: 300)
                
                    Text("Find work anytime anywhere")
                    .multilineTextAlignment(.center)
                    .frame(width: 300,height: 100, alignment: .center)
                    .font(.system(size: 18, weight:.semibold))
                    .foregroundColor(Color.black)
                    
                    HStack{
                        Circle()
                            .fill(Color.init("Gray"))
                            .frame(width: 7, height: 7)
                        
                        
                        Capsule()
                                .fill(Color.init("Color1"))
                            .frame(width: 12, height: 7)
            
                        
                        Circle()
                            .fill(Color.init("Gray"))
                            .frame(width: 7, height: 7)

                    }.padding()
                    .padding(.bottom, 10)
                
                Button(action: {
                    isShowOnBording2Screen.toggle()
                
            }, label: {
                Text("Login")
                .frame(width: 218, height: 35)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.white)
                .background(Color.init("Color1"))
                .cornerRadius(10)
            })
                                
                
                
                NavigationLink("",destination: SignIn(),  isActive: $isShowOnBording2Screen)
                
                
                    .padding(10)
           
                
    //            Button(
    //                "Login",
    //              action: {
    //                OnBoding3()
    //              }
    //            )
    //            .frame(width: 218, height: 35)
    //            .font(.system(size: 14, weight: .semibold))
    //            .foregroundColor(Color.white)
    //            .background(Color.init("Color1"))
    //            .cornerRadius(10)
                    
                    
                HStack{
                    
                    NavigationLink("Skip", destination: ProviderEditPage(), isActive: $isShowOnBording2Screen)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    Button(action: {
                        isShowOnBording2Screen.toggle()
                    
                }, label: {
                    Image(systemName:"arrow.right" )
                        .foregroundColor(Color.white)
                    .frame(width: 42, height: 35)
                    //.font(.system(size: 14, weight: .semibold))
                    .background(Color.init("Color1"))
                    .cornerRadius(10)
                })
                                    
                    
                    
                    NavigationLink("",destination: OnBoding3() ,  isActive: $isShowOnBording2Screen)

               
                    
                    
                    }.padding(.horizontal)
                    
                               
                    
                    
            }.navigationBarBackButtonHidden(true)
    
    
    }
}

struct OnBoding2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoding2()
    }
}

