//
//  TruckProgress.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 10/11/1443 AH.
//

import SwiftUI

struct TruckProgress: View {
    var date : String
    var status : String
    var isFirst:Bool
    var isLast:Bool
    var checkCircle:Bool
    var body: some View {
        
        HStack{
        Text(date)
        .font(.system(size: 14))
      .frame(width: 80)
            ZStack{
                VStack{
                    
                    Rectangle()
                        .frame(width:3, height: 20)
                        .foregroundColor(self.checkCircle ? Color(red: -0.23, green: 0.527, blue: 0.509).opacity(0.5) : Color.gray.opacity(0.5)  )
                        .opacity(self.isFirst ? 0.0 : 0.5)

                    Rectangle()
                        .frame(width:3, height: 20)
                        .foregroundColor(self.checkCircle ? Color(red: -0.23, green: 0.527, blue: 0.509).opacity(0.5) : Color.gray.opacity(0.5)  )
                        .opacity(self.isLast ? 0.0 : 0.5)
                }
                Circle()
                    .frame(width: 15,height: 15)
                    .foregroundColor(self.checkCircle ? Color(red: -0.23, green: 0.527, blue: 0.509).opacity(0.9) : Color.gray.opacity(0.9)  )
                }
                
            Text(status)
                .font(.system(size: 14))
                .frame(width: 200)
            

                
            }
           
        }
    }


struct TruckProgress_Previews: PreviewProvider {
    static var previews: some View {
        TruckProgress(date: "12 May", status: "Accapt the order", isFirst: false, isLast: false , checkCircle: false).previewLayout(.sizeThatFits)
    }
    
}
