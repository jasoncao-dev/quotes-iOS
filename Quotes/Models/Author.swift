//
//  Author.swift
//  Quotes
//
//  Created by Jason Cao on 3/15/22.
//

import Foundation

struct Author: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String

}
