//
//  SplashScreen.swift
//  Profile
//
//  Created by Khulood  on 16/11/1443 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive:Bool = false
    
    var body: some View {
        ZStack {
            
//            Color.init("Color1").ignoresSafeArea()

            VStack {
                
                       // 2.
                       if self.isActive {
                           // 3.
                           OnBoding1()
                       } else {
                           // 4.
                           Text("LOGO")
                               .font(Font.largeTitle)
                           
                       }
                
                
                   }
                   // 5.
                   .onAppear {
                       // 6.
                       DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                           // 7.
                           withAnimation {
                               self.isActive = true
                           }
                       }
               }
            
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
