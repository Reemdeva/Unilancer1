//
//  RatingView.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 20/11/1443 AH.
//

import SwiftUI

struct RatingView: View {
    @State private var rating : Int = 0
    @State private var review: String = "Type your review ..."
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            Color(red: 0.98, green: 0.98, blue: 0.98)
        VStack{
        VStack {
            Image("logo2")
                .resizable()
                .frame(width: 95, height: 86, alignment: .center)
                .scaledToFit()
                .scaledToFill()
            
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
                
            Text("Swifts")
                .padding(8)
            Text("Mobile Apps Developer")
              //  .padding()
        }
            HStack{
                Text("Seller Communication")
                    .frame(width:170, alignment: .leading)
                    .padding(8)
                StarCommunication(rating: rating)
                    .frame(width:120,alignment: .trailing)
                    .padding(16)
            }
            HStack{
                Text("Service as described")
                    .frame(width:170 , alignment: .leading)
                    .padding(8)
                StarService(rating: rating)
                    .frame(width:120,alignment: .trailing)
                    .padding(16)
            }
            HStack{
                Text("Would recommend")
                    .frame(width:170, alignment: .leading)
                    .padding(8)
                StarRecommend(rating: rating)
                    .frame(width:120,alignment: .trailing)
                    .padding(16)
            }
            HStack{
                TextEditor(text: $review)
//                    .lineLimit(4)
//                    .multilineTextAlignment(.leading)
            }
            .padding(8)
            .background(.white)
            .frame(width: 342, height: 177)
           // .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
            .padding(16)
            
            Button(action: { showingAlert = true}, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 262, height: 43)
                        .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
                        .cornerRadius(10)
                    Text("Rate")
                        .foregroundColor(.white)
                        .bold()
                    
                }
                
            })            .alert("Thank you for Rating", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
                .padding()
        }
           
        
    }
}
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
