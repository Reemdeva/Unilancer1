//
//  Prograss.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 08/11/1443 AH.
//

import SwiftUI

struct ProgressBar: View {
 
     var progress: Float
     
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .opacity(0.6)
                .foregroundColor(Color.gray)
             
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(red: -0.229, green: 0.527, blue: 0.514))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: UUID())

        }
        .frame(width: 62, height: 62)
        .padding(8)
//        .padding(.leading ,-50)
//        .padding(.bottom, 16)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 00.0).previewLayout(.sizeThatFits)
    }
}
