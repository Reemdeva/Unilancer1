//
//  AdsView.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 20/11/1443 AH.
//
//
import SwiftUI

let adss:[ads] = [
    
    ads(id: UUID(),adsimage: "ads", adsText: "Start Your Business\nWith Top Team Devloper!"),
    ads(id: UUID(), adsimage: "ads", adsText: "Start Your Business\nWith Top Team Devloper!"),
    ads(id: UUID(),adsimage: "ads", adsText: "Start Your Business\nWith Top Team Devloper!")

]
struct AdsView: View {

    var body: some View {
   
            //ScrollView(.horizontal,showsIndicators: false) {
                
               
                    TabView {
                        
                            ForEach(adss) { item in
                                ExtractedView(adss: item)
                            }
                        }
                   
                    .tabViewStyle(PageTabViewStyle())
                    .animation(Animation.easeIn, value:0.8)
    }
                   // .navigationTitle("Unilancer")
               // .navigationBarTitleDisplayMode(.inline)
               // }
           
                
        

        }


struct AdsView_Previews: PreviewProvider {
    var ads12: ads
    static var previews: some View {
        
        AdsView()
    }
}

struct ads:Identifiable {
    var id: UUID
    var adsimage : String
    var adsText : String
}


struct ExtractedView: View {
    var adss:ads

    var body: some View {
       // var adss:ads
        HStack {
//           ForEach(adss){ i in
         
                   ZStack{
                       Image(adss.adsimage)
                           .frame(width: 360, height: 200)
                        VStack {
                            Text(adss.adsText)
                                    .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .position(x:120, y: 130)
                        }
             
               }
            
        }
               
}
    }
