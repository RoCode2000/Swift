//
//  ToDoButton.swift
//  Animals
//
//  Created by Roger Teong on 30/4/23.
//

import SwiftUI

struct WeatherButton: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                Weather()
            } label: {
                Text("Weather")
                    .padding(.horizontal, 100.0)
                    .padding(.vertical, 20.0)
                    .background(Color.red.opacity(0.25))
                    .cornerRadius(20)
                    .foregroundColor(.black)
            }
        }
    }
}

struct ToDoButton_Previews: PreviewProvider {
    static var previews: some View {
        WeatherButton()
    }
}
