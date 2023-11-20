//
//  ContentView.swift
//  BusinessCard
//
//  Created by Rida Aftab on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal).ignoresSafeArea()
            VStack {
                
                Image("Rida")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Text("Rida Aftab")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .italic()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .font(.subheadline)
                    .foregroundColor(.white)
                
                InfoView(text: "+36203149048", imageName: "phone.fill")
                InfoView(text: "ridaaftab92gmail.com", imageName: "envelope.fill")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
