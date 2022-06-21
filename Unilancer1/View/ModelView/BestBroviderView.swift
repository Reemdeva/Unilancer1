//
//  ServicesCatogeryView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 14/11/1443 AH.
//
//View for spicfic catogry of services
import SwiftUI

struct BestBroviderView: View {
    
var services:[serviceProviders]
   // var services2:[serviceProviders]
    var BestRate = 4
    
    var filttersearch:[serviceProviders]{
        let filtered = services.filter{
           $0.ProviderRate >= BestRate
        }
//        let sorted = filtered.sorted { serviceProvider1, serviceProvider2 in
//            serviceProvider1.ProviderRate >  serviceProvider2.ProviderRate
        return filtered
//
//
}
    
    var sorted:[serviceProviders]{
        let sorted = filttersearch.sorted { serviceProvider1, serviceProvider2 in
                serviceProvider1.ProviderRate > serviceProvider2.ProviderRate
               
        }
        return sorted
    }
        
    
    var body: some View {
            VStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200),spacing: 16)]){
                        ForEach(sorted) {
                            ServicesType in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                servicesCard(servicesType: ServicesType)
                            }
                           
                        }
                    
                    }
                }
//     ScrollView {
//
//                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 200),spacing: 16)]){
//                        ForEach(filttersearch.filter{
//                            $0.ProviderRate >= searchText1
//                        }.sorted { serviceProvider1, serviceProvider2 in
//                            serviceProvider1.ProviderRate <  serviceProvider2.ProviderRate}) {
//                            ServicesType in
//                            servicesCard(servicesType: ServicesType)
//
//                        }
//
//
//                    }
//
//                }
            
            
        }.background(Color("Color"))
        
        //.navigationTitle("Services")
       // .searchable(text: $searchText1)
    }

}


