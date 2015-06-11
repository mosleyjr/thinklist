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
        // Option 2 - using dot syntax
        self.window.backgroundColor = NSColor.whiteColor()
        
        // Insert code here to initialize your application
        masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
        
        masterViewController.setupSampleThinks()
        window.contentView.addSubview(masterViewController.view)
        masterViewController.view.frame = (window.contentView as! NSView).bounds
        
        // 3. Set constraints on masterViewController.view
        masterViewController.view.translatesAutoresizingMaskIntoConstraints = false
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|[subView]|",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: ["subView" : masterViewController.view])
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|[subView]|",
            options: NSLayoutFormatOptions(0),
            metrics: nil,
            views: ["subView" : masterViewController.view])
        
        NSLayoutConstraint.activateConstraints(verticalConstraints + horizontalConstraints)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

