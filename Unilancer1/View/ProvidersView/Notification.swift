//
//  Notification.swift
//  Profile
//
//  Created by Khulood  on 20/11/1443 AH.
//

import SwiftUI
import Lottie

struct Notification: View {
    var body: some View {
            VStack {
                Lottie(fileName: "lf30_editor_j5jssvue")
                //.resizable()
            .frame(width: 375, height: 300)
            
            
                Text("No Notifications")
                    .multilineTextAlignment(.center)
                    .frame(width: 300,height: 100, alignment: .center)
                    .font(.system(size: 18, weight:.semibold))
                    .foregroundColor(Color.black)
                   // .frame(width: 220,height: 20, alignment: .center)
            }.navigationTitle("Notification")
             .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
