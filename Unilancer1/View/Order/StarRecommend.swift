//
//  StarRecommend.swift
//  ClientOrder
//
//  Created by Afnan Abdullah on 20/11/1443 AH.
//

import SwiftUI

struct StarRecommend: View {
    @State var rating: Int
  @State private var review = ""
  var label = ""
  var maximumRating = 5
  var offImage: Image?
  var onImage = Image(systemName: "star.fill")
  var offColor = Color.gray
  var onColor = Color.yellow
    
    //Fun
  func image(for number: Int) -> Image {
    if number > rating {
      return offImage ?? onImage
    } else {
      return onImage
    }
  }
    
  var body: some View {
    HStack {
      if label.isEmpty == false {
        Text(label)
      }
      ForEach(1..<maximumRating + 1, id: \.self) { number in
        image(for: number)
          .foregroundColor(number > rating ? offColor : onColor)
          .onTapGesture {
             rating = number
          }
          
      }
        //Text("\(rating)")
        
    }
  }
}

struct StarRecommend_Previews: PreviewProvider {
    static var previews: some View {
        StarRecommend(rating: 0)
    }
}


