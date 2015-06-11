//
//  thinklistDoc.swift
//  thinklist
//
//  Created by Jason Mosley on 6/11/15.
//  Copyright (c) 2015 Jason Mosley. All rights reserved.
//

import Foundation
import AppKit

class thinklistDoc: NSObject {
    var data: thinklistData
    var thumbImage: NSImage?
    var fullImage: NSImage?
    
    override init() {
        self.data = thinklistData()
    }
    
    init(title: String, rating: Double, thumbImage: NSImage?, fullImage: NSImage?) {
        self.data = thinklistData(title: title, rating: rating)
        self.thumbImage = thumbImage
        self.fullImage = fullImage
    }
}