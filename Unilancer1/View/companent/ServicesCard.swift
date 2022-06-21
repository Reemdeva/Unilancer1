//
//  servicesCard.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 08/11/1443 AH.
//
//1 card for provider 
import SwiftUI

struct servicesCard: View {
    var servicesType: serviceProviders
    var body: some View {
        VStack {
            HStack {
                ZStack{
                        Rectangle()
                        .fill(.white)
                        .frame(width: 348, height: 100)
                        .scaledToFit()
                        .cornerRadius(6)
                        .overlay(
                        RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("Color-1"), lineWidth: 1))
                        
                    HStack {
                        HStack{
                            Image(servicesType.Serviceslogo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 99,alignment:.leading)
                        }
                  //    .padding(.horizontal,5)
                       // .padding(.trailing)
                        
                            VStack{
                                HStack {
                                    Text(servicesType.ProviderServisce)
                                        .foregroundColor(Color("Color2"))
                                      // Spacer()
                                }.frame(width: 135,alignment:.leading)
                               
                                HStack{
                                    Text(servicesType.ProviderName)
                                        .foregroundColor(.black)
                                    .fontWeight(.light)
                                    Image(servicesType.RateImage)
                                    
                                    Text("\(servicesType.ProviderRate)")
                                        .foregroundColor(.black)

//                                    Int(servicesType.ProviderRate)
                                }.frame(width: 135,alignment:.leading)
                                
                                Text(servicesType.ProviderSpecialty)
                                    .foregroundColor(.black)

                                    .fontWeight(.light)
                                    .frame(width: 135,alignment:.leading)
                                    //.font(.system(size: 14))
                            }.padding(.trailing)
                        HStack {
                            Text(servicesType.ServicesPrice)
                                .font(.system(size: 11))
                                .fontWeight(.light)
                                .foregroundColor(Color("Color2"))

                        } .frame(width: 110,alignment:.leading)
                           .position(x:40, y: 85)
                    }
                  

                }
            }.padding(.horizontal)
        }
    }
}

