//
//  RunLogRowController.swift
//  LapTap
//
//  Created by Jason Humphries on 4/22/15.
//  Copyright (c) 2015 Jason Humphries. All rights reserved.
//

import UIKit
import WatchKit

class RunLogRowController: NSObject {
    
    @IBOutlet weak var dateLabel: WKInterfaceLabel!
    @IBOutlet weak var durationLabel: WKInterfaceLabel!
    @IBOutlet weak var distanceLabel: WKInterfaceLabel!
    
    var dateFormatter: NSDateFormatter?
    var distanceFormatter: NSLengthFormatter?
    var durationFormatter: NSDateComponentsFormatter?
    
    var run: Run? {
        didSet {
            if let run = self.run {
                dateLabel.setText(dateFormatter?.stringFromDate(run.startDate))
                durationLabel.setText(durationFormatter?.stringFromTimeInterval(run.duration))
                distanceLabel.setText(distanceFormatter?.stringFromMeters(run.distance))
            }
        }
    }
   
}
