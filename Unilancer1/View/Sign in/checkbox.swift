//
//  checkbox.swift
//  ProfileForClient
//
import Foundation
import SwiftUI
struct UIViewchechbox: ToggleStyle{
 func makeBody(configuration: Configuration) -> some View {
     Button{
        configuration.isOn.toggle()
    } label: {
        Image(systemName:"circle")
            .symbolVariant(configuration.isOn ? .circle.fill : .none)
    }
    .tint(Color.init("Color1"))
    

 }
    
}
    
    
    
    
    
    
    
    
    
    
    
    


