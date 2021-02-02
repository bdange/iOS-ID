//
//  ContentView.swift
//  BenjaminCard
//
//  Created by Benjamin Dange on 01/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.45, green: 0.73, blue: 1.00, opacity: 0.50)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("benjamin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Benjamin Dange")
                .font(Font.custom("RobotoCondensed-Regular", size: 40))
                .bold()
                .foregroundColor(.gray)
                Text("React & iOS Developer")
                    .foregroundColor(.gray)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "732-640-3791", imageName: "phone.fill")
                InfoView(text: "benjamin.dange@gmail.,com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


