//
//  HomeView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 07/11/1443 AH.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    var services = DataSource().exampleData
 //   var  allProviders  : [serviceProviders]
 //   var allProviders: serviceProviders
    var body: some View {
        
        NavigationView {
            
                VStack{
                    HStack {
                        TabView {
                                     ForEach(adss) { item in
                                         ExtractedView(adss: item)
                                           //  .transition(.move(edge: .trailing))
                                             //.animation(.default)

                                     }
                                 }
                            
                        .tabViewStyle(PageTabViewStyle())
                      //  .animation(.repeatCount(Int(5.0)))
    //                    ZStack{
    //                        Image("ads")
    //
    //                        VStack {
    //                            Text("Start Your Business\nWith Top Team Devloper !")
    //                                .fontWeight(.semibold)
    //                                .foregroundColor(.white)
    //
    //                                .searchable(text: $searchText)
    //
    //                            Spacer()
    //                        }
                         //.position(x:120, y: 220)
                    }
                    //.padding()
                        .frame(width: 370, height: 200)
                    ScrollView {
                    
                    HStack {
                        Text("Services Types")
                            .foregroundColor(Color("Color2"))
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.leading,12).padding(.top)
                    
                    ///card for servicec type and link
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 12) {
                            ForEach(services) { service in
                                
                                NavigationLink {
                                    ServicesTypeView(categoryName:service.category, services:service.serviceProvider )
                                } label: {
                                    ServiceCatogery(serviceC: service)
                                }
                            }}  //.padding()
                    }.padding(.horizontal)
                       // .padding(.leading,12)
                    HStack{
                        Text("Best Provider")
                            .foregroundColor(Color("Color2"))
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    } .padding(.leading,12).padding(.top)
                    
                    
             VStack (alignment:.center) {
                            BestBroviderView(services:getAllPrividers())
                   }
                  
//                    .navigationTitle("Unilancer")
//                    .navigationBarTitleDisplayMode(.inline)
                }
                .background(Color("Color"))}
         .navigationTitle("Unilancer")
        .navigationBarTitleDisplayMode(.inline)}
    }
    
    
    
    func getAllPrividers()->[serviceProviders]{
        var result : [serviceProviders] = []
        for service in services {
            for provider in service.serviceProvider{
                result.append(provider)
            }
            
        }
        return result
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


