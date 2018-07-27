//
//  InterfaceController.swift
//  testWatchApp WatchKit Extension
//
//  Created by Low, Makena (M.) on 7/24/18.
//  Copyright © 2018 Low, Makena (M.). All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBOutlet var station: WKInterfaceLabel!
    
    
    @IBAction func editStation() {
        let suggestions = ["102.7", "103.5", "97.1"]
        presentTextInputController(withSuggestions: suggestions, allowedInputMode: .plain) { (results) in
            guard let responses = results else {
                self.station.setText("Cancelled")
                return
            }
            let text = responses[0] as! String
            self.station.setText(text)
        }
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
