//
//  Guest.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 17/11/1443 AH.
//

import SwiftUI

struct Guest: View {
    @State private var previewON = true
       @State private var previewIndex = 0
       @State var isShowNot = false
       var previewOptions=["USD","EUR","SAR","UAE"]
       var body: some View {
           NavigationView{
     
               VStack(alignment: .center, spacing:-33){
               //الجزء العلوي
               Image (systemName: "person.fill")
                       .font(.system(size:33))
                       .foregroundColor(.init("Color1"))
                       .padding()
                       .foregroundColor(Color(.label))
           .overlay(RoundedRectangle(cornerRadius:64)
               .stroke(Color.init("Color1"), lineWidth: 3))
           .offset(x:-133,y:-80)
                   .font(.system(size:18))
                   .offset(y: 0)
               Text("Guest")
                   .font(.headline)
               .font(.system(size:19))
               .offset(x: -65, y:-105)
               Text("Welcome to Union")
                   .font(.system(size:15))
                   .font(.body)
                   .offset(x: -27, y: -67)
           //بداية الفورم
               Form{
                   HStack{
                       
                       Image(systemName: "plus.circle")
                           .foregroundColor(.init("Color1"))
                       NavigationLink("Join Union", destination:signUp() )
                           
                         }
                   //End 1
                   HStack{
                       Image(systemName:"arrow.up.circle")
                           .foregroundColor(.init("Color1"))
                       NavigationLink("Sign in", destination: SignIn())
                   }
                   //End 2
                   
                  //////////// /// Header num 2
                   Section(header:Text("General").font(.callout).foregroundColor(.gray)){
                     
                       //End 3
                       
             
                       HStack{
                           Image(systemName: "globe")
                               .foregroundColor(.init("Color1"))
                           Picker(selection: $previewIndex,label: Text("Language")){
                           }
                         
                           
                       }
                       //End 4
   //
                       HStack{
                           Image(systemName: "dollarsign.circle")
                          .foregroundColor(.init("Color1"))
                           Section(header: Text("Currency")) {
                            
                               
                           Picker(selection: $previewIndex, label:
                                   Text("")){
                               ForEach(0 ..< previewOptions.count){
                                   Text(previewOptions[$0])
                                   
                                 }
                               }
                               
                           }
                               
                       }
                       //End 5
                       
                       HStack{
                           Image(systemName: "list.bullet.rectangle.portrait")
                               .foregroundColor(.init("Color1"))
                           Picker(selection: $previewIndex,label: Text("Terms of service")){
                           }
                       }
                       //End 6
                       
                       HStack{
                           Image(systemName: "exclamationmark.circle")
                               .foregroundColor(.init("Color1"))
                           Picker(selection: $previewIndex,label: Text("About")){
                           }
                       }
                       //End 7
                       
                   }//نهايه الهدر
                   }//نهاية الفورم
                   
               .navigationBarItems(trailing:
                                       Button(action: {
                   isShowNot.toggle()
                   
                   
               }, label: {
                   Image(systemName: "bell")
                       .foregroundColor(Color.init("Color1"))
                   
               })
               )
           NavigationLink("", destination: Notification(), isActive: $isShowNot)
           
               
//
//                   NavigationLink("", destination: notifications() , isActive: $isShowNot )
                   
               }
                 
                   }
               }
           }

struct Guest_Previews: PreviewProvider {
    static var previews: some View {
        Guest()
    }
}
