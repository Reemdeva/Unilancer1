//
//  ClientProfile.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 21/11/1443 AH.
//

import SwiftUI

struct ClientProfile: View {
    @State private var previewON = true
        @State private var previewIndex = 0
        @State var  shouldShowImagePicker = false
        @State var isShowNot = false
        @State var MyImage : UIImage?
        @State var isShowSettingsScreen = false
        var previewOptions=["USD","EUR","SAR","UAE"]

    var body: some View {
        NavigationView{
                  
            VStack(alignment:.center, spacing:(-20)){
                
                      HStack{
                          Group{
                              Button(action: {
                                  shouldShowImagePicker = true
                              },label:{
                                  ZStack{
                                      if let MyImage = self.MyImage {
                                          Image(uiImage: MyImage)
                                              .resizable()
                                              .frame(width: 75, height: 75)
                                              .cornerRadius(37)
                                              .scaledToFill()
                                          
                                          Image (systemName: "plus.circle.fill")
                                              .font(.system(size:25))
                                              .foregroundColor(.teal)
                                              .offset(x:30,y:25)
                                          
                                      } else{
                                          
                                          Image ("Profile1")
                                              .resizable()
                                              .frame(width: 40, height: 40)
                                              .foregroundColor(.init("Color1"))
                                              .padding()
                                          
                                          Image (systemName: "plus.circle.fill")
                                              .font(.system(size:25))
                                              .foregroundColor(.green)
                                              .offset(x:30,y:25)
                                          
                                      }
                                  }.overlay(RoundedRectangle(cornerRadius:64)
                                      .stroke(Color.init("Color1"), lineWidth: 3))
                              }
                              )}
                          Group{
                              
                              VStack{
                                  Text("Tom H.Walker")
                                      .font(.headline)
                                      .font(.system(size:18))
                                      .offset(x:26)
                                      .font(.system(size:19))
                                  Text("Welcome to Union")
                                      .font(.body)
                                      .font(.system(size:14))
                                      .offset(x: 40,y:6)
                              }
                              
                          }.padding(.leading,-30)
                          
                          
                          
                      }.padding(.leading,-130)
                          .offset(y:-50)
                          .navigationBarItems(trailing:
                                                  Button(action: {
                              isShowNot.toggle()
                              
                              
                          }, label: {
                              Image(systemName: "bell")
                                  .foregroundColor(Color.init("Color1"))
                              
                          })
                          )
                      NavigationLink("", destination: Notification(), isActive: $isShowNot)
                      
                      Spacer()
                
                  Form{
                          
                          
                          
                          
                          
//                          HStack{
//                              Image(systemName: "person")
//                                  .foregroundColor(.init("Color1"))
//                              NavigationLink("Personal Information ", destination: personalInformation())
//                              
//                              
//                          }
                          //End 1
                          
                          HStack{
                              Image(systemName: "globe")
                                  .foregroundColor(.init("Color1"))
                              Picker(selection: $previewIndex,label: Text("Language")){
                              }
                              
                              
                          }
                          //End 2
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
                          //End 3
                          
                          HStack{
                              Image(systemName: "list.bullet.rectangle.portrait")
                                  .foregroundColor(.init("Color1"))
                              Picker(selection: $previewIndex,label: Text("Terms of service")){
                              }
                          }
                          //End 4
                          
                          HStack{
                              Image(systemName: "exclamationmark.circle")
                                  .foregroundColor(.init("Color1"))
                              Picker(selection: $previewIndex,label: Text("About")){
                              }
                          }
                          //End 5
                          HStack{
                              Image(systemName: "headphones")
                                  .foregroundColor(.init("Color1"))
                              Picker(selection: $previewIndex,label: Text("Help Center"))
                              {
                              }       }
                          
                          
                          
                          
                      }
                      //نهاية الفورم
                
      // LogOut
                ZStack{
                    Button(action: {
                        isShowNot.toggle()
                                
                            }, label: {
                                Text("Logout")
                                .frame(width: 300, height: 35)
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color.red)
                                .background(Color.white)
                                .cornerRadius(10)
                            })
                                                
                    NavigationLink("",destination: ContentView() ,  isActive: $isShowNot)
        
                }.offset(y:-200)
                 
          
                
                
                  }.fullScreenCover(isPresented:$shouldShowImagePicker, onDismiss: nil){
                      imagePicker(myImage:$MyImage)}
            
              
                  
              
              
              }
          }
         }

struct ClientProfile_Previews: PreviewProvider {
    static var previews: some View {
        ClientProfile()
    }
}
