//
//  Login2.swift
//  MicroChallenge
//
//  Created by areej on 21/11/1443 AH.
//
import Contacts
import SwiftUI
//import Firebase
//import FirebaseStorage
struct SignIn: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            
            VStack{
                           Text("Welcome to Unilancer ")
                               .font(.system(size:28).bold())
                               .foregroundColor(.init("Color1"))
                           Text("Sign in to Unilancer ")
                               .font(.system(size:20).bold())
                               .padding(-8)
            }.padding()
            
            
            
            TextField("Email",text:$email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .frame(width: 332, height: 40)
                .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))
            
                .padding()
            
            
            TextField("Password",text: $password )
                .padding()
                .frame(width: 332, height: 40)
                .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))
          
            
            
            
            
            
            Group{
                            Button{
//                                loginUser()
//                                task{await otpModel.sendOTP()}
            
                            } label: {
                                Text("Continue")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(width: 290, height: 43)
                                    .background{
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                        .fill(Color.init("Color1"))}
                            }
            }.padding()
            
            HStack{

                Text("⎯⎯⎯⎯⎯⎯⎯")
                    .foregroundColor(.gray)

                Text("Or")
                    .font(.system(size:15).bold())
                    .foregroundColor(.init("Color1"))

                Text("⎯⎯⎯⎯⎯⎯⎯")
                    .foregroundColor(.gray)
            }
            
            Group{
                ZStack{
                    Button { print("Continue with Google")

                    }label:{
                        Text("Continue with Google")
                            .foregroundColor(.white)
                            .frame(width: 290, height: 36)


                    }
                    .foregroundColor(.white)
                    .frame(width: 290, height: 36)
                    .background(.blue)
                    .cornerRadius(30)

                    Image("Google1")
                        .foregroundColor(.white)
                        .offset(x:-130,y:-1)
                }
                //3
                ZStack{
                    Button{
                        print("Continue with Apple")
                    } label: {
                        Label("Continue with Apple",systemImage:"applelogo")
                            .foregroundColor(.black)
                            .frame(width: 290, height: 36)
                            .background(.white)

                    }.buttonBorderShape(.capsule)
                        .overlay(RoundedRectangle(cornerRadius:10).stroke(Color.gray, lineWidth: 1))
                }
                //2

            }.padding(7)
            
            

        }.padding(-20)
    }
    
    
//    @State var loginStatusMessage = ""
//    private func  loginUser() {
//        firbaseManager.shared.auth.signIn(withEmail: email, password: password) { result, err in
//            if let err = err {
//                print("failed to login user :",err)
//                self.loginStatusMessage = "failed to login user: \(err)"
//                return
//            }
//            print("Successfully logged in as user:\(result?.user.uid ?? "")")
//            self.loginStatusMessage = "SSuccessfully logged in as user:\(result?.user.uid ?? "")"
//        }
//
//
//
//
//
//
//    }
    
    
    
}

struct Login2_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
