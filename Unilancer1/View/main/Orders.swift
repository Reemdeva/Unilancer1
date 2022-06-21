//
//  Orders.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 08/11/1443 AH.
//

import SwiftUI

struct Orders: View {
    var rateAdd = ""
    var body: some View {
        NavigationView {
            Text("Order")
          // var rateAdd = ""
           
                .navigationTitle("Orders").navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
