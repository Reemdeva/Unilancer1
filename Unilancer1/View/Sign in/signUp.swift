//
//  loginPage.swift
//  ProfileForClient
//
//  Created by areej on 07/11/1443 AH.
//

import SwiftUI
struct signUp: View {
    @State var firstName = ""
       @State var lasttName = ""
       @State var email = ""
       @State var password = ""
       @State  public var isSelected : Bool = false
       let users = "Users"
    var body: some View {

    NavigationView {
                VStack (alignment: .center,spacing:-100){

    //7 Do have already account

                    Group{
                        
                           Button(""){
                            

                           }
                        NavigationLink(destination: SignIn()) {
                             Text("Do have already account ? Sign in")
                        }
                           .foregroundColor(.black)
                           .font(.system(size:14))
                    }.padding()


                    // 6
                    Group{
                        Button{
//                            createNewAccount()
                            
                        } label: {
                            Text("Join Us")
                                .foregroundColor(.white)
                                .frame(width: 290, height: 43)
                                .background(Color.init("Color1"))
                        }
                    }.buttonBorderShape(.capsule)
                        .cornerRadius(10)

                    //5
                    VStack{
                        HStack{
                            Toggle("",isOn: $isSelected)
                                .labelsHidden()
                                .toggleStyle(UIViewchechbox())
                                .font(.custom("Dubai-Bold", size:15))
                                .font(.title)
                            Text("I agree with the Terms Condition & Privacy Policy")
                                .font(.system(size:11))

                        }

    //                    HStack{
    //                        Toggle("",isOn: $isSelected)
    //                            .labelsHidden()
    //                            .toggleStyle(UIViewchechbox())
    //                            .font(.custom("Dubai-Bold", size:15))
    //                            .font(.title)
    //                            .offset(x:-92)
    //                        Text("New Account ")
    //                            .font(.system(size:11))
    //                            .offset(x:-90)
    //                    }
                    }.padding(-1)

                    //4text filed
                    Group{
    //                    TextField("Country",text: $firstName)
    //                        .background(Color.white)
    //                        .padding()
    //                        .frame(width: 332, height: 40)
    //                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
    //


                        TextField("Password",text: $password )
                            .padding()
                            .frame(width: 332, height: 40)
                            .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))




                        TextField("Email",text:$email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                            .frame(width: 332, height: 40)
                            .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))



                        TextField("Last Name",text:$lasttName)
                            .padding()
                            .frame(width: 332, height: 40)
                            .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))




                        TextField("First Name",text:$firstName)
                            .padding()
                            .frame(width: 332, height: 40)
                            .overlay(RoundedRectangle(cornerRadius:5).stroke(Color.gray, lineWidth: 1))

                    }.padding(3)

                    // 3 or text
                    
                    
                    
                    
                    
                    
                    HStack{

                        Text("  ⎯⎯⎯⎯⎯⎯⎯⎯")
                            .foregroundColor(.gray)

                        Text("Or")
                            .font(.system(size:15).bold())
                            .foregroundColor(.init("Color1"))

                        Text("⎯⎯⎯⎯⎯⎯⎯⎯  ")
                            .foregroundColor(.gray)
                    }.padding()

                    // 2 Button
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

                    /// الي فوق
                    Group{
                        Text("Join us to start Your Business!")
                            .font(.system(size:14).bold())

                        Text("Unilancer")
                            .font(.system(size:30).bold())
                            .foregroundColor(.init("Color1"))

                    }
                    .padding(23)

                }
                .offset(y:-38)
            }.navigationViewStyle(StackNavigationViewStyle())
       }
    }

struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}

