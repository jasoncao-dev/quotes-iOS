//
//  DataService.swift
//  Quotes
//
//  Created by Jason Cao on 3/15/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Author] {
        // Parse local json file
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Author]()
        }
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            do {
                var authorsData = try decoder.decode([Author].self, from: data)
                // Add the unique IDs
                for i in 0..<authorsData.count {
                    authorsData[i].id = UUID()
                }
                // Return the authors
                return authorsData
            } catch {
                // Error with parsing JSON
                print(error)
            }
        } catch {
            // Error with getting data
            print(error)
        }
        // Return the authors
        return [Author]()
    }
    
}
