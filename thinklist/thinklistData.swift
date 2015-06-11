//
//  thinklistData.swift
//  thinklist
//
//  Created by Jason Mosley on 6/11/15.
//  Copyright (c) 2015 Jason Mosley. All rights reserved.
//

import Foundation

class thinklistData: NSObject {
    var title: String = "Default String"
    var rating: Double
    
    override init() {
        self.title = String()
        self.rating = 0.0
    }
    
    init(title: String, rating: Double) {
        self.title = title
        self.rating = rating
    }
}
