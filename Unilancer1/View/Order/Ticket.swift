//
//  Ticket.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 10/11/1443 AH.
//

import SwiftUI

struct Ticket: View {
    @State private var showingAlert = false
    @State private var email: String = ""
    @State private var subject: String = ""
    @State private var message: String = ""
    var body: some View {
        
        ZStack{
            Color(red: 0.98, green: 0.98, blue: 0.98)
        VStack {
            // Title
            Text("Send us Message")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color(red: -0.008, green: 0.228, blue: 0.225))
            
            // Email
            HStack{
                TextField("Email", text: $email)
            }
            .padding(8)
            .background(.white)
            .frame(width: 342, height: 44)
            .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
            .padding(8)
            
            //Subject
            HStack{
                TextField("Subject", text: $subject)
            }
            .padding(8)
            .background(.white)
            .frame(width: 342, height: 44)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
            .padding(8)
            
            //Massege
            HStack{
                TextEditor(text: $message)
//                    .lineLimit(4)
//                    .multilineTextAlignment(.leading)
            }
            .padding(8)
            .background(.white)
            .frame(width: 342, height: 177)
            .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color(red: 0.875, green: 0.875, blue: 0.875), lineWidth: 1))
            .padding(.bottom, 32)
            
            
            // Send Button
            Button(action: { showingAlert = true}, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 262, height: 43)
                        .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
                        .cornerRadius(10)
                    Text("Send")
                        .foregroundColor(.white)
                        .bold()
                    
                }
                
            })
            .alert("Message has been sent successfully", isPresented: $showingAlert) {
                 Button("OK", role: .cancel) { }
             }
        }
    }
}
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket()
    }
}
