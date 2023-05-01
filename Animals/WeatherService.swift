//
//  WeatherService.swift
//  Animals
//
//  Created by Roger Teong on 30/4/23.
//

import Foundation

struct WeatherService {
    func getData(country: String){
        let q = country.replacingOccurrences(of: "\\s", with: "%20", options: .regularExpression)

        print(q)
        
        let headers = [
            "X-RapidAPI-Key": "b0b2fb3d02mshe741872f72efe44p18620djsn84571232adc9",
            "X-RapidAPI-Host": "weatherapi-com.p.rapidapi.com"
        ]
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://weatherapi-com.p.rapidapi.com/current.json?q=" + q)! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            } else {
                let httpResponse = response as? HTTPURLResponse
//                        print(httpResponse as Any)
                if let responseData = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                        
//                        print(json)
                        
                        if let dict = json as? [String: Any],
                           
                           let current = dict["current"] as? [String: Any],
                           let location = dict["location"] as? [String: Any],
                           
                           let country = location["country"] as? String,
                           let lat = location["lat"] as? Double,
                           let lon = location["lon"] as? Double,
                           
                           let temp_c = current["temp_c"] as? Double,
                           let temp_f = current["temp_f"] as? Double,
                           let wind_mph = current["wind_mph"] as? Double,
                           let wind_kph = current["wind_kph"] as? Double
{
                            let data = [country: country, lat: lat]
            
                            print("The items are Country:\(country), lat:\(lat), lon:\(lon), temp_cel:\(temp_c), temp_fah:\(temp_f), wind_mph:\(wind_mph), wind_kph:\(wind_kph)")
                            print(data)
                        } else {
                            print("Could not parse JSON.")
                        }
                        
                    } catch {
                        print("Error converting response data to JSON: \(error.localizedDescription)")
                    }
                }
            }
        })
        
        dataTask.resume()
    }

}
