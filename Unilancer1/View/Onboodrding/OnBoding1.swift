//
//  OnBoding1.swift
//  Profile
//
//  Created by Khulood  on 16/11/1443 AH.
//

import SwiftUI

struct OnBoding1: View {
    
    @State var isShowOnBording1Screen = false
    
    var body: some View {
        NavigationView{
        
        VStack{
            HStack {
                Lottie(fileName: "lf30_editor_wgbwv9je")
                //.resizable()
            .frame(width: 375, height: 300)
            }
            
            HStack {
                Text("Save your time and find the best services")
                    .multilineTextAlignment(.center)
                    .frame(width: 300,height: 100, alignment: .center)
                    .font(.system(size: 18, weight:.semibold))
                    .foregroundColor(Color.black)
                   // .frame(width: 220,height: 20, alignment: .center)
            }
            
                
                HStack{
                    
                    Capsule()
                            .fill(Color.init("Color1"))
                        .frame(width: 12, height: 7)
                    
                    Circle()
                        .fill(Color.init("Gray"))
                        .frame(width: 7, height: 7)
        
                    
                    Circle()
                        .fill(Color.init("Gray"))
                        .frame(width: 7, height: 7)

                }.padding()
                .padding(.bottom, 10)
            
            Button(action: {
                isShowOnBording1Screen.toggle()
            
        }, label: {
            Text("Login")
            .frame(width: 218, height: 35)
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(Color.white)
            .background(Color.init("Color1"))
            .cornerRadius(10)
        })
                            
            
            
            NavigationLink("",destination: SignIn(), isActive: $isShowOnBording1Screen)
                
            
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
                
                NavigationLink("Skip", destination: ProviderEditPage(), isActive: $isShowOnBording1Screen)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Button(action: {
                    isShowOnBording1Screen.toggle()
                
            }, label: {
                Image(systemName:"arrow.right" )
                    .foregroundColor(Color.white)
                .frame(width: 42, height: 35)
                //.font(.system(size: 14, weight: .semibold))
                .background(Color.init("Color1"))
                .cornerRadius(10)
            })
                                
                
                
                NavigationLink("",destination: OnBoding2(), isActive: $isShowOnBording1Screen)
                    
           
                
                
            }.navigationBarBackButtonHidden(true)
            .padding(.horizontal)
                
                           
                
                
            }.navigationBarBackButtonHidden(true)
    }
    }
}

struct OnBoding1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoding1()
    }
}
