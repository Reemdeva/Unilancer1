//
//  Massges.swift
//  Unilancer1
//
//  Created by Reem Alharthi on 08/11/1443 AH.
//

import SwiftUI

struct Massges: View {
    var body: some View {
        NavigationView {
            Text("Massege")
                .navigationTitle("Masseges").navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(.stack)
    }
}

struct Massges_Previews: PreviewProvider {
    static var previews: some View {
        Massges()
    }
}

