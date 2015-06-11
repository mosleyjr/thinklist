//
//  MasterViewController.swift
//  thinklist
//
//  Created by Jason Mosley on 6/11/15.
//  Copyright (c) 2015 Jason Mosley. All rights reserved.
//

import Cocoa

class MasterViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    var thinks = [thinklistDoc]()
    
    func setupSampleThinks() {
        let think1 = thinklistDoc(title: "Potato Bug", rating: 4.0,
            thumbImage:NSImage(named: "potatoBugThumb"), fullImage: NSImage(named: "potatoBug"))
        let think2 = thinklistDoc(title: "House Centipede", rating: 3.0,
            thumbImage:NSImage(named: "centipedeThumb"), fullImage: NSImage(named: "centipede"))
        let think3 = thinklistDoc(title: "Wolf Spider", rating: 5.0,
            thumbImage:NSImage(named: "wolfSpiderThumb"), fullImage: NSImage(named: "wolfSpider"))
        thinks = [think1, think2, think3]
    }
}

// MARK: - NSTableViewDataSource
extension MasterViewController: NSTableViewDataSource {
    func numberOfRowsInTableView(aTableView: NSTableView) -> Int {
        return self.thinks.count
    }
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        // 1
        var cellView: NSTableCellView = tableView.makeViewWithIdentifier(tableColumn!.identifier, owner: self) as! NSTableCellView
        
        // 2
        if tableColumn!.identifier == "thinklistColumn" {
            // 3
            let thinkDoc = self.thinks[row]
            cellView.imageView!.image = thinkDoc.thumbImage
            cellView.textField!.stringValue = thinkDoc.data.title
            return cellView
        }
        
        return cellView
    }
}

// MARK: - NSTableViewDelegate
extension MasterViewController: NSTableViewDelegate {
}