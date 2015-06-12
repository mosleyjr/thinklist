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

        // Content Flow into title bar
        // self.window.styleMask = self.window.styleMask | NSFullSizeContentViewWindowMask;
        // Blurred window effect?
        class BlurredWindowController: NSWindow {
            
            override func awakeFromNib() {
                
                let visualEffectView = NSVisualEffectView(frame: NSMakeRect(0, 0, 300, 180))
                visualEffectView.material = NSVisualEffectMaterial.Dark
                visualEffectView.blendingMode = NSVisualEffectBlendingMode.BehindWindow
                visualEffectView.state = NSVisualEffectState.Active
                
                self.styleMask = self.styleMask | NSFullSizeContentViewWindowMask
                self.titlebarAppearsTransparent = true
                //self.appearance = NSAppearance(named: NSAppearanceNameVibrantDark)
                
                self.contentView .addSubview(visualEffectView)
                
                self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[visualEffectView]-0-|", options: NSLayoutFormatOptions.DirectionLeadingToTrailing, metrics: nil, views: ["visualEffectView":visualEffectView]))
                self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[visualEffectView]-0-|", options: NSLayoutFormatOptions.DirectionLeadingToTrailing, metrics: nil, views: ["visualEffectView":visualEffectView]))
            }
        }
        // END Blurred window effect

        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    


}

