//
//  personalInformation.swift
//  Profile
//
//  Created by Khulood  on 15/11/1443 AH.
//

import SwiftUI

struct ProviderPersonalInformation: View {
    @State var firstName = ""
    @State var lasttName = ""
    @State var Email = ""
    @State var phoneNumber = ""
    
    var body: some View {
        
        NavigationView{
        VStack{
            
            Group{
                TextField("First Name",text: $firstName)
                    .background(Color.white)
                    .padding()
                    .frame(width: 332, height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        
//                        .border(.gray)
//                        .cornerRadius(2)
       
            
           
                TextField(" Last Name",text: $lasttName )
                    .padding()
                    .frame(width: 332, height: 40)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.gray, lineWidth: 1))
      
            
                
                
                TextField("Email",text:$Email)
                    .padding()
                    .frame(width: 332, height: 40)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.gray, lineWidth: 1))
      
                
                
                TextField("Phone Number",text:$phoneNumber)
                    .padding()
                    .frame(width: 332, height: 40)
                    .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.gray, lineWidth: 1))
            }.offset(y:-160)
            
            
            
            Group{
                Button{  print("Continue") } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 43)
                    .background(Color.init("Color1"))
                }
                }.buttonBorderShape(.capsule)
                .cornerRadius(10)
            
            
            
            
        }
//        .navigationBarTitle(Text("Personal Information List"),displayMode: .inline)
            
            
        }
    }
}

struct personalInformation_Previews: PreviewProvider {
    static var previews: some View {
        ProviderPersonalInformation()
    }
}
