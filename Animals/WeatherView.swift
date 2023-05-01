//
//  ToDoView.swift
//  Animals
//
//  Created by Roger Teong on 29/4/23.
//

import SwiftUI

struct WeatherView: View {
    @State var selectedCountry = "Singapore"
    let countryID = CountryData
    var weatherService = WeatherService()
    
    var body: some View {
        VStack{
            Picker("Select a country:", selection: $selectedCountry) {
                ForEach(countryID, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.navigationLink)
            .padding()
            .background(Color.cyan.opacity(0.2))
            .cornerRadius(25)
            .frame(width: 300)
            .font(.headline)
            .foregroundColor(.black)
            Spacer()
            
            
            
            Spacer()
            Button {
                weatherService.getData(country: selectedCountry)
            } label: {
                Text("Hello Press")
            }

        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
