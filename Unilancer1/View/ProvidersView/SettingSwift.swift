//
//  SettingSwift.swift
//  Profile
//
//  Created by Khulood  on 15/11/1443 AH.
//

import SwiftUI

struct SettingSwift: View {
    @State var isShowUserSettingsScreen = false
    @State private var previewON = true
    @State private var previewIndex = 0
    var previewOptions=["USD","EUR","SAR","UAE"]
    var body: some View {
        NavigationView{
        
            VStack{
                
                Form{
 
                   //////////// /// Header num 2
                   
                        
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(.init("Color1"))
                            NavigationLink("Personal Information ", destination: ProviderPersonalInformation())

                           
                        }
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
                
                        //End 5
                            
                            
                        }
                    
                    HStack{
                        Image(systemName: "headphones")
                            .foregroundColor(.init("Color1"))
                        Picker(selection: $previewIndex,label: Text("Help Center")){
                        }
            
                    //End 5
                        
                        
                    }
                    
                    }
                
                ZStack{
                    
                    Button(action: {
                        isShowUserSettingsScreen.toggle()
                    
                }, label: {
                    Text("Logout")
                    .frame(width: 218, height: 35)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(10)
                })
                                    
                    
                    
                    NavigationLink("",destination: OnBoding3().navigationBarBackButtonHidden(true) ,  isActive: $isShowUserSettingsScreen)
                        .navigationBarBackButtonHidden(true)
                    
                        .padding(10)
                    
                    
                    navigationBarItems(trailing:
                                            Button(action: {
                        isShowUserSettingsScreen.toggle()
                        
                        
                    }, label: {
                        Image(systemName: "bell")
                            .foregroundColor(Color.init("Color1"))
                        
                    })
                    )
                NavigationLink("", destination: Notification(), isActive: $isShowUserSettingsScreen)
                

                    
                    
                }
                
                
                }
            
            
                
            }
        //.navigationBarTitle("Setting",displayMode:.inline)
        }
}

struct SettingSwift_Previews: PreviewProvider {
    static var previews: some View {
        SettingSwift()
    }
}
