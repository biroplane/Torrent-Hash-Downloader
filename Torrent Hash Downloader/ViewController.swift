//
//  ViewController.swift
//  Torrent Hash Downloader
//
//  Created by Gaetano on 30/09/16.
//  Copyright © 2016 Gaetabiro. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    let hashUrl = "magnet:?xt=urn:btih:"
    @IBOutlet weak var hashText: NSTextField!
    @IBAction func grabTorrent(sender: NSButton) {
       
        let theText=hashText.stringValue
        let trimmedString = theText.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        print("CLICK "+hashUrl+theText)
        let url=NSURL(string: hashUrl+trimmedString)
        NSWorkspace.sharedWorkspace().openURL(url!)
        hashText.stringValue=""
    }
}

