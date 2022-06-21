//
//  OnBoding3.swift
//  Profile
//
//  Created by Khulood  on 07/11/1443 AH.
//

import SwiftUI

struct OnBoding3: View {
    @State var isShowOnBording3Screen = false
    
    var body: some View {
        
            VStack{
                Lottie(fileName: "lf30_editor_gr0h47ry")
                //.resizable()
                .frame(width: 375, height: 300)
                
                    Text("Chat, comuncate, and share files to get what best for you.")
                    .multilineTextAlignment(.center)
                    .frame(width: 300,height: 100, alignment: .center)
                    .font(.system(size: 18, weight:.semibold))
                    .foregroundColor(Color.black)
                    
                    HStack{
                        
                        Circle()
                            .fill(Color.init("Gray"))
                            .frame(width: 7, height: 7)
            
                        
                        Circle()
                            .fill(Color.init("Gray"))
                            .frame(width: 7, height: 7)
                        
                        Capsule()
                                .fill(Color.init("Color1"))
                            .frame(width: 12, height: 7)

                    }.padding()
                    .padding(.bottom, 10)
                
                Button(action: {
                    isShowOnBording3Screen.toggle()
                
            }, label: {
                Text("Login")
                .frame(width: 218, height: 35)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.white)
                .background(Color.init("Color1"))
                .cornerRadius(10)
            })
                                
                
                
                NavigationLink("",destination: SignIn(),  isActive: $isShowOnBording3Screen)
                    //.navigationBarBackButtonHidden(true)
                
                
                Button(action: {
                    isShowOnBording3Screen.toggle()
                
            }, label: {
                Text("Get Started")
                .frame(width: 218, height: 35)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(Color.white)
                .background(Color.init("Color1"))
                .cornerRadius(10)
            })
                                
                
                
                NavigationLink("",destination: UserType(),  isActive: $isShowOnBording3Screen)
                    //.navigationBarBackButtonHidden(true)
           
                    
                }.navigationBarBackButtonHidden(true)
            
                .padding(.horizontal)
                
    }
}

struct OnBoding3_Previews: PreviewProvider {
    static var previews: some View {
        OnBoding3()
    }
}
