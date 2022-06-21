//
//  UserTypeButton.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 21/11/1443 AH.
//

import SwiftUI

struct UserTypeButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    var body: some View {
        
        ZStack {
            
            
            Rectangle()
                .frame(width: 163, height: 127, alignment: .center)
                .cornerRadius(10)
                .foregroundColor(isSelected ? color : .init("Gray"))
                    Text(text)
                .foregroundColor(.black)
                .frame(width: 145, height: 100, alignment: .center)
                .multilineTextAlignment(.center)
            
                }
    }
}

struct UserTypeButton_Previews: PreviewProvider {
    static var previews: some View {
        UserTypeButton(isSelected: .constant(false),color: .init("Color1"), text: "Option")
    }
}
