//
//  OrderView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 20/11/1443 AH.
//

import SwiftUI

struct OrderView: View {
    var orders : [ordreInfo] = [
        ordreInfo(id: UUID(), developName: "Swiftis", developImage: "logo2", progress: 0, serviceName: "App Devlopment Service", startDate:"13 May", endDate: "13 Oct", cost: 400, statusName: "Pending Payment", statusOrdre: .accapt) ,
        ordreInfo(id: UUID(), developName: "5boss", developImage: "5boss", progress: 0.99, serviceName: "Design Service", startDate:"13 May", endDate: "16 Oct", cost: 600, statusName: "Order Completed", statusOrdre: .deliverd),
        ordreInfo(id: UUID(), developName: "5boss", developImage: "5boss", progress: 0.50, serviceName: "Game Service", startDate:"13 May", endDate: "16 Oct", cost: 900, statusName: "Order Execution", statusOrdre: .execution) ,
        ordreInfo(id: UUID(), developName: "5boss", developImage: "5boss", progress: 0.25, serviceName: "App Devlopment Service", startDate:"13 May", endDate: "16 Oct", cost: 550, statusName: "Order confirmed", statusOrdre: .confirmed)
        ]
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.98)
                
                VStack(spacing: 16){
                    Text("")
                    ForEach(orders){ order in
                        NavigationLink(destination: OrderDetail(order: order), label: {
                        ZStack{
                            Rectangle()
                                .cornerRadius(6)
                                .frame(width: 343, height: 124)
                                .foregroundColor(.white)
                                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
                                
        
                            HStack{
                                ProgressBar(progress: order.progress)
                                    .frame(alignment: .leading)
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("\(order.serviceName)")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color(red: -0.008, green: 0.228, blue: 0.225))
                                            .bold()
                                            .frame(width: 170,alignment: .leading)
                                        Text("\(order.startDate)")
                                            .font(.system(size: 10))
                                            .foregroundColor(.gray)
                                            .padding(.leading, 8)
                                    }
                                    HStack{
                                        Image(order.developImage)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 30, height: 29)
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            .overlay(Circle().stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
                                        
                                        Text("\(order.developName)")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color(red: -0.008, green: 0.228, blue: 0.225))
                                    }
                                    ZStack{
                                        switch order.statusName{
                                        case "Pending Payment":
                                        Rectangle()
                                            .frame(width: 131, height: 18)
                                            .cornerRadius(10)
                                            .foregroundColor(Color(red: 0.764, green: 0.769, blue: 0.764))
                                            Text("\(order.statusName)")
                                            .font(.system(size: 12))
                                            .foregroundColor(.white)
                                           // break
                                        case "Order Completed" :
                                            Rectangle()
                                                .frame(width: 131, height: 18)
                                                .cornerRadius(10)
                                                .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
//                                                .foregroundColor(Color(red: 0.764, green: 0.769, blue: 0.764))
                                            
                                            Text("\(order.statusName)")
                                                .font(.system(size: 12))
                                                .foregroundColor(.white)
                                            
                                        case "Order Execution" :
                                            Rectangle()
                                                .frame(width: 131, height: 18)
                                                .cornerRadius(10)
                                                .foregroundColor(Color(red: 1.004, green: 0.808, blue: 0.041))
                                            Text("\(order.statusName)")
                                                .font(.system(size: 12))
                                                .foregroundColor(.white)
                                            
                                        case "Order confirmed":
                                            Rectangle()
                                                .frame(width: 131, height: 18)
                                                .cornerRadius(10)
                                                .foregroundColor(Color(red: 1.004, green: 0.808, blue: 0.041))
                                            Text("\(order.statusName)")
                                                .font(.system(size: 12))
                                                .foregroundColor(.white)
                                        case "Order Canceled" :
                                            Rectangle()
                                                .frame(width: 131, height: 18)
                                                .cornerRadius(10)
                                                .foregroundColor(Color(red: 0.978, green: -0.189, blue: -0.084))
                                              
                                            Text("\(order.statusName)")
                                                .font(.system(size: 12))
                                                .foregroundColor(.white)
                                        default:
                                            Text("")
                                        }
                                }
                                }
                                
                            } // End Hstack
                        }// End Recangele
                    }) // End Navigation Link
                }// end loop
                Spacer()
                }
            }.padding(.bottom)
            // End Background
            
            .navigationTitle("Order")
            .navigationBarTitleDisplayMode(.inline)
            
        } // End Navigation
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
