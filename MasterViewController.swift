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
}

// Content Flow into title bar
// self.window.styleMask = self.window.styleMask | NSFullSizeContentViewWindowMask;
// Blurred window effect?
class BluredWindow: NSWindow {
    
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
