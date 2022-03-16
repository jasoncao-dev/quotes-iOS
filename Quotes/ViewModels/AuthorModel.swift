//
//  AuthorModel.swift
//  Quotes
//
//  Created by Jason Cao on 3/15/22.
//

import Foundation

class AuthorModel: ObservableObject {
    @Published var authors = [Author]()
    
    init() {
        // Create an instance of data service and load local data
        authors = DataService.getLocalData()
    }
}
