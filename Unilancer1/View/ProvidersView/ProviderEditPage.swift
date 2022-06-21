//
//  EditPage.swift
//  Profile
//
//  Created by Khulood  on 17/11/1443 AH.
//

import SwiftUI

struct ProviderEditPage: View {
    @State var Name = ""
    @State var About = ""
    @State var TypeOfServices = ""
    @State var PriceStartfrom = ""
    @State var LinkedIn = ""
    @State var GitHub = ""
    @State var Website = ""

    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack{
                    
                    Group{
                    Text("Name")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
              TextField("",text: $Name)
                        .background(.white)
                        .padding()
                        .frame(width: 343, height: 36)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                    Text("About")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    
                    
                    TextField("",text: $About)
                              .background(.white)
                              .padding()
                              .frame(width: 343, height:72)
                              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                    
                    Text("Type of services")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    
        //Type of services
                    
                    VStack {
                        HStack (spacing: 0) {
                            Button("Full App Creation") {}
                                .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(Color.black)
                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.capsule)
                                    .padding()
                            
                            
                            Button("HI-Fi Prototype") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.capsule)
                                    .padding(.trailing)
                            
                                        
                        
                        }.offset(x:-45,y:0)
                        
                        HStack (spacing: 0){
                            Button("Upload to app store") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.capsule)
                                    .padding()
                            
                            
                            Button("Other +") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
                                    .buttonBorderShape(.capsule)
                                    .padding(.trailing)
                            
                        }.offset(x:-57,y:0)
                    }
                    
                    
                    
                    }
                    
                    Group{
                    Text("Price start from ")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    TextField("",text: $About)
                              .background(.white)
                              .padding()
                              .frame(width: 343, height:36)
                              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                    
                    
                    
                    Text("LinkedIn")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    TextField("",text: $LinkedIn)
                              .background(.white)
                              .padding()
                              .frame(width: 343, height:36)
                              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                        
                    
                    
                    Text("GitHub")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    TextField("",text: $GitHub)
                              .background(.white)
                              .padding()
                              .frame(width: 343, height:36)
                              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                    
                    
                    Text("Website")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(Color.black)
                        .padding(.leading,-165)
                    
                    TextField("",text: $Website)
                              .background(.white)
                              .padding()
                              .frame(width: 343, height:36)
                              .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth:1))
                        
                        
                          
                    }
                }
            }.navigationBarTitle("Edit Profile",displayMode:.inline)
        }
    }
}

struct EditPage_Previews: PreviewProvider {
    static var previews: some View {
        ProviderEditPage()
    }
}
