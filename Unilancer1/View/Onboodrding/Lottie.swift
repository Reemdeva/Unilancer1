//
//  Lottie.swift
//  Profile
//
//  Created by Khulood  on 19/11/1443 AH.
//

import Lottie
import SwiftUI
import UIKit


struct Lottie: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    var fileName: String

    
    func makeUIView(context: UIViewRepresentableContext<Lottie>) -> UIView {
        let view = UIView(frame: .zero)
        
        //add animation
        let animationView = AnimationView()
        animationView.animation = Animation.named(fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
        
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Lottie>) {
        // do nothing
    }
    
    
}
