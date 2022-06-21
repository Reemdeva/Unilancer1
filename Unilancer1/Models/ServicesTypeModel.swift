//
//  ServicesTypeModel.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 08/11/1443 AH.
//

import Foundation

struct Service: Identifiable{
    var id: UUID
    var category: String
    var CatogeryImage: String
    var serviceProvider: [serviceProviders]
    init(id:UUID, category:String,servicesImageC:String,serviceProvider:[serviceProviders]){
    self.id = id
    self.category = category
    self.CatogeryImage = servicesImageC
    self.serviceProvider = serviceProvider
    self.serviceProvider = self.serviceProvider.sorted { serviceProvider1, serviceProvider2 in
    serviceProvider1.ProviderRate >  serviceProvider2.ProviderRate}

  }
}

struct serviceProviders: Identifiable{
    var id: UUID
    var ProviderServisce :String
    var Serviceslogo:String
    var ProviderName:String
    var ProviderSpecialty:String
    var ProviderRate:Int
    var RateImage:String
    var ServicesPrice:String
}


struct Service1: Identifiable{
    var id: UUID
    var category: String
    var CatogeryImage: String
    var serviceProvider: [serviceProviders]
    init(id:UUID, category:String,servicesImageC:String,serviceProvider:[serviceProviders]){
    self.id = id
    self.category = category
    self.CatogeryImage = servicesImageC
    self.serviceProvider = serviceProvider
    self.serviceProvider = self.serviceProvider.sorted { serviceProvider1, serviceProvider2 in
    serviceProvider1.ProviderRate >  serviceProvider2.ProviderRate}

  }
}
  
struct serviceProviders1: Identifiable{
    var id: UUID
    var ProviderServisce : [ProviderServisce]
    var Serviceslogo:String
    var ProviderName:String
    var AboutProvider:String
    var UserType:String
    var Links:String
    var ProviderRate:Int
    var RateImage:String
    var ServicesPrice:String
    var ProviderSpecialty:String
    var userRivew:[userRivew]
    var userWorks:[userWorks]
    

}

struct userRivew: Identifiable {
    var id: UUID
    var ClientImage: String
    var ClientName: String
    var RateImage: String
    var fullreview: String
    
}

struct userWorks: Identifiable {
    var id: UUID
    var image: String
    var WorkName: String
}

struct ProviderServisce : Identifiable{
    var id: UUID
    var ServiceName:String
}








class DataSource: ObservableObject{

    @Published var exampleData = [Service(id: UUID(), category: "App Development", servicesImageC: "App", serviceProvider: [
        
        
        
        serviceProviders(id: UUID(), ProviderServisce: "Full Stack", Serviceslogo: "5boss", ProviderName: "5boss", ProviderSpecialty: "ios Developer", ProviderRate: 5, RateImage: "Star", ServicesPrice: "From 20,000$"),
        
        
        serviceProviders(id: UUID(), ProviderServisce: "Frontend", Serviceslogo: "tom", ProviderName: "Tom", ProviderSpecialty: "ios Developer", ProviderRate: 4, RateImage:"star-1", ServicesPrice: "From 20,000$")
                                                                                                
                                                                                                ]
              
              ),
    
                                  Service(id: UUID(), category: "Design", servicesImageC: "Design", serviceProvider: [serviceProviders(id: UUID(), ProviderServisce: "Design", Serviceslogo: "logo1", ProviderName: "Uniqness", ProviderSpecialty: "Design", ProviderRate: 4, RateImage: "Star", ServicesPrice: "From 20,000$"),serviceProviders(id: UUID(), ProviderServisce: "Design", Serviceslogo: "logo2", ProviderName: "Uniqness", ProviderSpecialty: "Design", ProviderRate: 5, RateImage: "Star", ServicesPrice: "From 20,000$")
                                                                                           ]),
       
                                  Service(id: UUID(), category: "Web Devlopment", servicesImageC: "web", serviceProvider: [serviceProviders(id: UUID(), ProviderServisce: "Web Devlopment", Serviceslogo: "logo3", ProviderName: "Limtess", ProviderSpecialty: "Full Stack", ProviderRate: 3, RateImage: "Star", ServicesPrice: "From 20,000$"),
                                                                                                serviceProviders(id: UUID(), ProviderServisce: "Web Devlopment", Serviceslogo: "logo4", ProviderName: "Uniqness", ProviderSpecialty: "Web Design", ProviderRate: 5, RateImage: "Star", ServicesPrice: "From 20,000$")
                                                                                          ]),
       
                                  Service(id: UUID(), category: "Game", servicesImageC: "game", serviceProvider: [serviceProviders(id: UUID(), ProviderServisce: "Game", Serviceslogo: "logo5", ProviderName: "Uniqness", ProviderSpecialty: "Game", ProviderRate: 2, RateImage: "Star", ServicesPrice: "From 20,000$"),serviceProviders(id: UUID(), ProviderServisce: "Game", Serviceslogo: "logo6", ProviderName: "Uniqness", ProviderSpecialty: "Design", ProviderRate: 5 , RateImage: "Star", ServicesPrice: "From 20,000$")
                                                                                          ]),
       
       
                                  Service(id: UUID(), category: "Others", servicesImageC: "others", serviceProvider: [serviceProviders(id: UUID(), ProviderServisce: "Data", Serviceslogo: "logo7", ProviderName: "Mona", ProviderSpecialty: "DataAnalyses", ProviderRate: 3, RateImage: "Star", ServicesPrice: "From 20,000$"),serviceProviders(id: UUID(), ProviderServisce: "Busniss", Serviceslogo: "logo4", ProviderName: "Reem", ProviderSpecialty: "Marketing", ProviderRate: 3, RateImage: "Star", ServicesPrice: "From 20,000$")
                                                                                          ]),
       
        
    ]
    
    
    
}


