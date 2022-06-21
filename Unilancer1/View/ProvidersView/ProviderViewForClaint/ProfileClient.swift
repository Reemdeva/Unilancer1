//
//  ProfileClient.swift
//  Profile
//
//  Created by Khulood  on 20/11/1443 AH.
//

import SwiftUI

struct ProfileClient: View {
    @State var isShowClientProfileScreen = false

    
    var body: some View {
        
        NavigationView{
            VStack{
                

            Image("Swifts")
                    .resizable()
                    .frame(width: 375, height: 191)

            
        Home()
                
            .navigationBarTitle(Text("Swiftis"),displayMode:.inline)
                
//            .navigationBarItems(trailing:
//
//
//                Button(action: {
//                isShowSettingsScreen.toggle()
//
//            }, label: {
//                Image(systemName:"gearshape.fill" )
//                    .foregroundColor(Color.init("Color1"))
//            })
//
//            )
//
//
//                NavigationLink("",destination: SettingSwift() ,  isActive: $isShowSettingsScreen)
           

            }
}
}

struct ProfileClient_Previews: PreviewProvider {
    static var previews: some View {
        ProfileClient()
    }
}

struct Home : View {
    
    @State var isShowClientProfileScreen = false

    
    @State var index = 1
    @State var offset : CGFloat = 0 //UIScreen.main.bounds.width
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        
        VStack(spacing: 0){
            
            AppBar(index: self.$index, offset: self.$offset)
            
            GeometryReader {g in
                
                HStack(spacing: 0) {
                    
                    First()
                        .frame(width: g.frame(in: .global).width)
                    
                    Second()
                        .frame(width: g.frame(in: .global).width)
                }
                
                .offset(x: self.offset)
            }
           
            .overlay(
                
                Button(action: {
                    isShowClientProfileScreen.toggle()
                    
                }, label: {
                    
                    Text("Contact Seller")
                    .frame(width: 262, height: 43)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color.white)
                    .background(Color.init("Color1"))
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink("", destination: SettingSwift(), isActive: $isShowClientProfileScreen)
                      
                })
                
                .padding(.horizontal)
                .offset(y: 150)
            
            
            )
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}



struct AppBar : View {
    
    @Binding var index : Int
    @Binding var offset : CGFloat
    var width = UIScreen.main.bounds.width
    
    var body: some View{
        
        VStack(alignment: .leading, content: {
            
            Text("About")
                .font(.title)
                .foregroundColor(.white)
                .padding(.leading)
                .padding(.bottom)
            
            HStack{
                
                Button(action: {
                    
                    self.index = 1
                    self.offset = 1
                    
                }){
                    
                    VStack(spacing: 8) {
                        HStack(spacing: 12){
                            
                            Text("About")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(self.index == 1 ? .init("Color1") : Color.black.opacity(0.7))
                        }
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.init("Color1") : Color.clear)
                            .frame(height: 2)
                    }
                    //.offset(y: 150)
                }
                
                Button(action: {
                    
                    self.index = 2
                    self.offset = -self.width
                    

                    
                }){
                    
                    VStack(spacing: 8) {
                        HStack(spacing: 12){
                            
                            Text("Work")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(self.index == 2 ? .init("Color1") : Color.black.opacity(0.7))
                        }
                        
                        Capsule()
                            .fill(self.index == 2 ? Color.init("Color1") : Color.clear)
                            .frame(height: 2)
                    }
                    
                    //.offset(y: 150)
                    
                }

            }
        })
            .padding(.horizontal)
            .padding(.top, -50)
            .padding(.bottom, 10)
        .background(Color.clear)
        }
    }


struct First : View {
    //array services
    
    var review_data : [userRivew] = [
        
        userRivew.init(id: UUID(), ClientImage: "35", ClientName: "Sara", RateImage: "Re", fullreview: "“Highly recommend to anyone who likes being creative but has a hard time coming up with ideas.”"),
        
        userRivew.init(id: UUID(), ClientImage: "35", ClientName: "ROY", RateImage: "Re2", fullreview: "“Recommend for create full iOS app and design.”"),
        
        
        ]
    
    var body: some View{
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack {
          //  Group{
                HStack{
                Text("About")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.init("DG"))
                        Spacer()
                    Capsule()
                            .fill(Color.init("Color1"))
                            .frame(width: 57, height: 13)

                            .overlay(
                                Text("Group")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 8))
                    

)
                    
                }.padding(.horizontal)
                    .padding(.top)
                    .padding(.bottom)
            
            //Group {
                VStack{
                    Text("Swiftis is an saudi multinational information technology company. Our Team has been devlope iOS app using SwiftUI and UIKit sinces 2018, we can do a full app creation of any idea you have and make it real.")
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .lineLimit(8)
                        .font(.system(size: 12))
                    
//                        .multilineTextAlignment(.center)
//                        .frame(width: 300,height: 100, alignment: .center)
//                        .font(.system(size: 18, weight:.semibold))
//                        .foregroundColor(Color.black)
                    
                    
                    
                        .padding(.horizontal)
                        .padding(.bottom)
                            //.offset(y: 70)
                    
                    
                //    Group{
                    
                

                    
                    
                    Text("Links")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.init("DG"))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 300)
                        
                        
                        HStack {
                        Link(destination: URL(string: "https://github.com/")!) {
                            Image("GitH")
                                .resizable()
                                .frame(width: 26, height: 26)
                                //.background(Color.init("LG"))
                            
                            
                                
                        }//.padding(.trailing, 250)
                            
                            Link(destination: URL(string: "https://www.linkedin.com/")!) {
                                Image("Linked")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    //.background(Color.init("LG"))
                                
                                
                                    
                            }
                            
                            Link(destination: URL(string: "https://staqo.com/mobile-app-development/saudi-arabia/?gclid=Cj0KCQjwzLCVBhD3ARIsAPKYTcRM4wtwt5JzkWqo1EuDUx6OR3iFobS8krHbmaH0g2qC55-7AgMd5YkaAj3aEALw_wcB")!) {
                                Image("Website")
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    //.background(Color.init("LG"))
                                
                                
                                    
                            }
                                
                        }.padding(.trailing, 250)

                    
                        
                    }
              
                    
                    Text("Services")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.init("DG"))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 270)
                        .offset(y: 20)
                    //scroll
                    //grid
                    VStack {
                        HStack (spacing: 0) {
                            Button("Full App Creation") {}
                                .font(.system(size: 12, weight: .regular))
                                    .foregroundColor(Color.black)
//                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
//                                    .buttonBorderShape(.capsule)
                                    .padding()
                            
                            
                            Button("HI-Fi Prototype") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
//                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
//                                    .buttonBorderShape(.capsule)
                                    .padding(.trailing)
                            
                                        
                        
                        }.offset(x:-45,y:0)
                        
                        HStack (spacing: 0){
                            Button("Upload to app store") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
//                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
//                                    .buttonBorderShape(.capsule)
                                    .padding()
                            
                            
                            Button("Other +") {}
                            
                                .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.black)
//                                    .background(Color.init("LG"))
                                    .background(Color.init("LG"))
                                    .clipShape(Capsule())
                                    .buttonStyle(.bordered)
//                                    .buttonBorderShape(.capsule)
                                    .padding(.trailing)
                            
                        }.offset(x:-57,y:0)
                    }
                    //.offset(y: 10)
                    
                    Text("Review")
                    .frame(width: 340, height: 50, alignment: .leading)

                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.init("DG"))
                       // .offset(y: 20)
                
           

                
                ScrollView{
                ReviewSection()
                    .padding(/*@START_MENU_TOKEN@*/.top, -50.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 345, height: 300, alignment: .leading)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init("Gray"), lineWidth: 0.5))
                    
                    //Or let the width be .infinity
                    
                }
                

            // }

           // }
            
            
        }
        .background(Color.white)
            
        }
        
    }
}


struct Second : View {
    
    var works = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var work_data : [userWorks] = [
        userWorks (id:UUID(), image: "Travel App UI kit", WorkName: "Travel - iOS App"),
        
        userWorks (id: UUID(), image: "Kanian - Food Application Design", WorkName: "Food Ordering - iOS App"),
        
        userWorks (id: UUID(), image: "Voluminous Hair Style app - Redlio Design", WorkName: "THair Style - iOS App"),
        
        userWorks (id: UUID(), image: "Virtual Exhibition App Design", WorkName: "Virtual Exhibition - iOS App"),
    
    ]
    
    var body: some View{
        
        ScrollView {
            
                            LazyVGrid(columns: works, spacing: 22){
                                
                                ForEach(work_data) { userWork in

                                    VStack{
                                    Image(userWork.image)
                                            .resizable()
                                            .frame(width: 141, height: 129)
                                            .cornerRadius(6)
                                    
                                    Text(userWork.WorkName)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                        .font(.system(size: 8))
                                        .offset(y: -4)
                                    
                                    }.overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.init("Gray"), lineWidth: 0.5))
                                    //.frame(width: 141, height: 160.5)


                                    }
//
//
                                    
                                    
                                }
                        
//
//                                    }.padding(.trailing,12 )
//                                .padding(.leading,20 )

                            //; Spacer(minLength: 61)
                            
                           
                        
                        
                    } //.offset(x: -30)
                                        
                    
                    
                         
                
                
                
          //  }
        
        
        .background(Color.clear)
        }
        
    }

}
