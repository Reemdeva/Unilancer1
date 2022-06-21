//
//  ServiceCatogeryView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 10/11/1443 AH.
//

import SwiftUI
//card for services catogery
struct ServiceCatogery: View {
    
    var serviceC: Service
    
    
    var body: some View {
        
            VStack{
                Image(serviceC.CatogeryImage)
                Text(serviceC.category)
                    .foregroundColor(Color("Color2"))
                    .font(.system(size: 16)).frame(width: 130, alignment: .center)
        
            }
        }
    }



