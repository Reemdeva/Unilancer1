//
//  OrderDetail.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 08/11/1443 AH.
//

import SwiftUI

struct OrderDetail: View {

    var order: ordreInfo
    @State var isAddPresented = false
    @State var isAddPresented1 = false
    var body: some View {
        ZStack{
            Color(red: 0.98, green: 0.98, blue: 0.98)

            VStack{
            VStack{
                HStack{
                    switch order.statusOrdre {
                    case .Pyament :
                        ProgressBar(progress: order.progress)
                            .frame(alignment: .leading)
                    case .canceld:
                        ProgressBar(progress:order.progress)
                            .frame(alignment: .leading)
                    case .accapt:
                        ProgressBar(progress:order.progress)
                            .frame(alignment: .leading)
                    case .execution:
                        ProgressBar(progress: order.progress)
                            .frame(alignment: .leading)
                    case .deliverd:
                        ProgressBar(progress:order.progress)
                            .frame(alignment: .leading)
                    case .confirmed:
                        ProgressBar(progress:order.progress)
                            .frame(alignment: .leading)
                    }
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text(order.serviceName)
                            .font(.system(size: 14))
                            .foregroundColor(Color(red: -0.008, green: 0.228, blue: 0.225))
                            .bold()
                            .frame(width: 170,alignment: .leading)
                        Text(order.developName)
                            .font(.system(size: 10))
                            .foregroundColor(.black)
                    }// End Vstack
                } .frame(width: 300, alignment: .leading)// end HStack
                
                
                ZStack{
                    Rectangle()
                        .frame(width: 305, height: 219)
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
                    VStack(spacing: 0){
                        
                        switch order.statusOrdre {
                        case .Pyament :
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: false)
                            
                        case .canceld:
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: false)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: false)
                            
                        case .accapt:
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: false)
                        case .execution:
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: false)
                        case .deliverd:
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: true)
                        case .confirmed :
                            TruckProgress(date: order.startDate, status: "Accapt the order", isFirst: true, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Pyament Phase", isFirst: false, isLast: false , checkCircle: true)
                            TruckProgress(date: "", status: "Order Execution", isFirst: false, isLast: false , checkCircle: false)
                            TruckProgress(date: order.endDate, status: "Order Deliverd", isFirst: false, isLast: true , checkCircle: false)
                        }
                        
                    }
                    
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: 305, height: 65)
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
                    HStack{
                        Text("Total Price :")
                            .font(.system(size: 14))
                            .frame(width: 100, alignment: .leading)
                        
                        Text("\(order.cost)")
                            .frame(width: 100, alignment: .trailing)
                    }
                }
            }.position(x:180, y:200)
            VStack (alignment: .center){
                if  order.statusOrdre  == .accapt  {
                    Button(action: { }, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 262, height: 43)
                                .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
                                .cornerRadius(10)
                            Text("Pay")
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        
                    })
                    .padding()
                }

                if  order.statusOrdre  ==  .deliverd {
                    Button(action: { self.isAddPresented1 = true}, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 262, height: 43)
                                .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
                                .cornerRadius(10)
                            Text("Rate")
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                        
                    })        .sheet(isPresented: $isAddPresented1,
                                     onDismiss: { self.isAddPresented1 = false }) {
                        RatingView()
                              }
                    .padding()
                }
            }
                  

            }
            
        }
        .navigationTitle(order.serviceName)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:Button(
            action:  {
                self.isAddPresented = true
                
                
            }, label: {
                Image(systemName: "headphones")
                    .foregroundColor(Color(red: -0.23, green: 0.527, blue: 0.509))
                    
                
            }))
        .sheet(isPresented: $isAddPresented,
               onDismiss: { self.isAddPresented = false }) {
            Ticket()
        }
        
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetail(order: ordreInfo(id: UUID (), developName: "", developImage: "", progress: 0, serviceName: "", startDate: "", endDate: "", cost: 0, statusName: "", statusOrdre: .accapt))
    }
}


