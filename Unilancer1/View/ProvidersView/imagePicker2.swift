//
//  ImagePicker.swift
//  MyAcademy
//
//  Created by khawlah khalid on 08/05/2022.
//

import SwiftUI
import UIKit
struct imagePicker2 : UIViewControllerRepresentable {
    @Binding var myImage: UIImage?
    @Environment(\.presentationMode) private var presentationMode
    var sourceType : UIImagePickerController.SourceType = .photoLibrary
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<imagePicker2>) ->
    UIImagePickerController{
   
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
// leave alone for right now
    }
    final class coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var parent : imagePicker2
        
        init( parent: imagePicker2){
            self.parent = parent
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
                parent.myImage = image
            
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
        }
    func makeCoordinator()-> coordinator {
        coordinator(parent: self)
        
    }
    }

