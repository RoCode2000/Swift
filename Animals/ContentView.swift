//
//  ContentView.swift
//  Animals
//
//  Created by Roger Teong on 29/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            VStack {
                NavigationLink("Weather") {
                    WeatherView()
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 100)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                NavigationLink("To-Do") {
                    ToDoView()
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 100)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
