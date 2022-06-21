//
//  testView.swift
//  Profile
//
//  Created by Khulood  on 16/11/1443 AH.
//

import SwiftUI

struct ReviewSection: View {
    
    init () {
        UITableView.appearance().backgroundColor = .clear
    }
    var review_data : [userRivew] = [
        
        userRivew (id: UUID(), ClientImage: "35", ClientName: "Sara", RateImage: "Re", fullreview: "“Highly recommend to anyone who likes being creative but has a hard time coming up with ideas.”"),
        
        userRivew (id: UUID(), ClientImage: "35", ClientName: "ROY", RateImage: "Re2", fullreview: "“Recommend for create full iOS app and design.”"),
        
        
        ]
    
    
    var body: some View {
        VStack{
            
            
            List(review_data) { userRivews in
//                        ZStack //(alignment: .leading)
//                        {
                VStack(alignment: .center, spacing: 10)  {
                       
                       HStack {
                            
                            Image(userRivews.ClientImage)
                                .resizable()
                                .frame(width: 27.92, height: 28, alignment: .leading)

                            Text(userRivews.ClientName)
                                .font(.system(size: 12, weight: .bold))

                            
                            Spacer()
                            
                            Image(userRivews.RateImage)
                                .resizable()
                                .frame(width: 76.78, height: 13, alignment: .trailing)


                        }.padding()
                    
                       
                       // VStack{
                        Text(userRivews.fullreview)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                        .lineLimit(.max)
                      //  }
                        
                   }.padding()
                   //.padding(.top, 20)
                    
            }
        }//.listStyle(PlainListStyle())
        
        
        //.frame(width: 345, height: 118, alignment: .leading)
            //.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.init("Gray"), lineWidth: 0.5))
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewSection()
    }
}
