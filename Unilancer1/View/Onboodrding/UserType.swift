//
//  UserType.swift
//  Profile
//
//  Created by Khulood  on 17/11/1443 AH.
//

import SwiftUI

struct UserType: View {
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State var isShowUserTypeScreen = false

    
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                
                   
                UserTypeButton(
                                    isSelected: $isSelected,
                                    color: .init("Color1"),
                                    text: "I’m a service provider, looking for work")
                                    .onTapGesture {
                                        isSelected.toggle()
                                        
                                        if isSelected {
                                            isSelected2 = false
                                        }
                                    }
                                    .padding(30)
                                
                UserTypeButton(
                                    isSelected: $isSelected2,
                                    color: .init("Color1"),
                                    text: "I’m a client, looking for a help with a project")
                                    .onTapGesture {
                                        isSelected2.toggle()
                                        
                                        if isSelected2 {
                                            isSelected = false
                                        }
                                    }
                                    .padding()
                                Button(action: {
                                    isShowUserTypeScreen.toggle()
                                
                            }, label: {
                                Text("Create Account")
                                .frame(width: 218, height: 35)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color.white)
                                .background(Color.init("Color1"))
                                .cornerRadius(10)
                            })
                                                
                                
                                
                                NavigationLink("",destination: signUp(), isActive: $isShowUserTypeScreen)
                                    

                        
            
            
            
            
            }.navigationBarBackButtonHidden(true)
        }
}

struct UserType_Previews: PreviewProvider {
    static var previews: some View {
        UserType()
    }
}
}
