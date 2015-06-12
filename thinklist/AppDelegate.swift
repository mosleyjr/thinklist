//
//  AppDelegate.swift
//  thinklist
//
//  Created by Jason Mosley on 6/10/15.
//  Copyright (c) 2015 Jason Mosley. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    // Delegate MasterViewController
    var masterViewController: MasterViewController!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Title/Header Bar Color
        // using dot syntax
        self.window.backgroundColor = NSColor.whiteColor()

        
        // Insert code here to initialize your application
        masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
        
        window.contentView.addSubview(masterViewController.view)
        masterViewController.view.frame = (window.contentView as! NSView).bounds
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

