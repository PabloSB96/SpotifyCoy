//
//  ContentView.swift
//  SpotifyCopy
//
//  Created by Pablo Sánchez Bello on 24/2/21.
//

import SwiftUI

struct InitialView : View {
    @State var goToLogin = false
    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                Image("spotify_white_icon")
                    .resizable()
                    .frame(width: 75, height: 75, alignment: .bottom)
                Text("Millones de canciones.")
                    .bold()
                    .font(.custom("Proxima Nova", size: 24.0))
                    .foregroundColor(Color.white)
                Text("Gratis en Spotify.")
                    .bold()
                    .font(.custom("Proxima Nova", size: 24.0))
                    .foregroundColor(Color.white)
                
                Button(action: {}){
                    Spacer()
                    Text("Registrate gratis")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding()
                    Spacer()
                }
                .background(Color.green)
                .cornerRadius(40)
                .padding([.leading, .trailing], 20)
                
                NavigationLink(destination: LoginView(), isActive: $goToLogin){
                    Button(action: {
                        goToLogin = true
                    }){
                        Spacer()
                        Text("Iniciar sesión")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color.white)
                            .padding()
                        Spacer()
                    }
                    .background(Color.black)
                    .cornerRadius(40)
                    .padding([.leading, .trailing], 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.yellow, lineWidth: 1)
                            .padding([.leading, .trailing], 20))
                }
                Spacer().frame(maxHeight:100)
            }.background(
                Image("spotify_login_background")
                .resizable()
                .aspectRatio(UIImage(named: "spotify_login_background")!.size, contentMode: .fill)
                .clipped())
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
