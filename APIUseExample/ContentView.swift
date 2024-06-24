//
//  ContentView.swift
//  APIUseExample
//
//  Created by Miguel Zane on 28/05/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                NavigationLink(destination: ViewListProduct()) {
                    Text("Ver productos").font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                Spacer()
            }.padding(10)
        }
    }
}

#Preview {
    ContentView()
}
