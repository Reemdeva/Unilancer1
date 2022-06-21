//
//  TabBar.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 08/11/1443 AH.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Services",systemImage: "square.grid.2x2")
                } 
            
            Massges()
                .tabItem{
                    Label("Massges",systemImage: "bubble.middle.bottom")
                }
            OrderView()
                .tabItem{
                    Label("Orders",systemImage: "bag")
                }
            Guest()
                .tabItem{
                    Label("Profile",systemImage: "person")
                      
                }
            
            
        }
        .accentColor(Color("Color1"))
       
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
