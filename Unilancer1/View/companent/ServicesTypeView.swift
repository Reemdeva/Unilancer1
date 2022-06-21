//
//  ServicesTypeView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 07/11/1443 AH.
//

import SwiftUI


// lazyGrid for all services in app and search bar
struct ServicesTypeView: View {
   // @State object var vm=DataSource()
    @StateObject var vm = DataSource()
    let categoryName : String
    var services:[serviceProviders]
    @State private var searchText1 = ""
   // @State private var searchText = "5"
   // var catogery1:Service
   var i = "ServiceCatogery"
    
 // vm.filttersearch1=vm.filttersearch2
//    fun
//    vm.filttersearch1 = vm.filttersearch2.sorted{(ser1,ser2) -> Bool in
//
//    return ser1.ProviderRate > ser2.ProviderRate }
      
    var filttersearch:[serviceProviders]{
  if searchText1==""{return services}
        
          return services.filter{
              $0.ProviderServisce.lowercased().contains(searchText1.lowercased())
          }
    }
    
    var body: some View {
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200),spacing: 16)]){
                    ForEach(filttersearch) {
                        
                        ServicesType in
                        NavigationLink {
                            ProfileView()
                        } label: {
                            servicesCard(servicesType: ServicesType)
                        }

                       
                    }
                
                }
            }.navigationTitle(categoryName)
            .background(Color("Color"))
            .searchable(text: $searchText1)
    }//.navigationTitle("Services Catogery")

//
//        func rated(){
//
//            for service in vm.filttersearch2 {
//
//                let result = service.serviceProvider.sorted { serviceProvider1, serviceProvider2 in
//                    serviceProvider1.ProviderRate >  serviceProvider2.ProviderRate
//                    //...
//
//                   vm.filttersearch2.firstIndex(where: serviceProvider1.id == service.id)?.serviceProvider = result
//
//                }
//            }
//
//
////    vm.filttersearch1 = vm.filttersearch2.sorted(by: { ser1,ser2 -> Bool in
////
////        ser1.serviceProvider
////        return ser1.serviceProvider.serviceProviders[0].ProviderRate > ser2.serviceProviders[1].ProviderRate })
////                                                 }
//
//                                                 }

}
