//
//  LoginView.swift
//  SpotifyCopy
//
//  Created by Pablo Sánchez Bello on 2/3/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                Text("Iniciar sesión")
                    .bold()
                    .font(.custom("Proxima Nova", size: 24.0))
                    .foregroundColor(Color.white)
                
                Spacer().frame(maxHeight: 50)
                
                VStack(){
                    Button(action: {}){
                        HStack(spacing: 10) {
                            Image(systemName: "mail")
                                .padding(.leading, 20)
                            Text("Continuar con correo electrónico")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                                .fixedSize(horizontal: true, vertical: true)
                        }
                        Spacer()
                    }
                    .background(Color.green)
                    .cornerRadius(40)
                    .padding([.leading, .trailing], 20)
                    .frame(maxHeight: 50)
                    
                    Spacer().frame(maxHeight: 8)
                    
                    Button(action: {}){
                        HStack(spacing: 10) {
                            Image(systemName: "arkit")
                                .padding(.leading, 20)
                            Text("Continuar con Google")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                        }
                        Spacer()
                    }
                    .background(Color.black)
                    .cornerRadius(40)
                    .padding([.leading, .trailing], 20)
                    .frame(maxHeight: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.gray, lineWidth: 1)
                            .padding([.leading, .trailing], 20))
                    
                    Spacer().frame(maxHeight: 8)
                    
                    Button(action: {}){
                        HStack(spacing: 10) {
                            Image(systemName: "arkit")
                                .padding(.leading, 20)
                            Text("Continuar con Facebook")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                        }
                        Spacer()
                    }
                    .background(Color.black)
                    .cornerRadius(40)
                    .padding([.leading, .trailing], 20)
                    .frame(maxHeight: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.gray, lineWidth: 1)
                            .padding([.leading, .trailing], 20))
                    
                    Spacer().frame(maxHeight: 8)
                    
                    Button(action: {}){
                        HStack(spacing: 10) {
                            Image(systemName: "applelogo")
                                .padding(.leading, 20)
                            Text("Continuar con Apple")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color.white)
                                .padding()
                        }
                        Spacer()
                    }
                    .background(Color.black)
                    .cornerRadius(40)
                    .padding([.leading, .trailing], 20)
                    .frame(maxHeight: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.gray, lineWidth: 1)
                            .padding([.leading, .trailing], 20))
                }
                
                Spacer()
            }.background(Color.black)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
