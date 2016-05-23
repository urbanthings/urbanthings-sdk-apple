//
//  ContainerViewController.swift
//  UrbanThingsAPI
//
//  Created by Mark Woollard on 06/05/2016.
//  Copyright © 2016 UrbanThings. All rights reserved.
//

import UIKit
import CoreLocation
import UTAPI

class ContainerViewController : UIViewController {
    
    var location:DemoLocation?
    var modes:[TransitMode] = [TransitMode.CycleHired, TransitMode.Car]
    
    @IBOutlet weak var attributionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.location = StopsModel.sharedInstance.demoLocations[0]
        self.refreshData()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // Ensure you have set a valid ApiKey in StopsModel.swift
        if !StopsModel.sharedInstance.hasValidApiKey() {
            let alert = UIAlertController(title: "No API Key", message: "To use the demo app you must insert your Api key into the appropriate place in file StopsModel.swift", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func changeType(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            self.modes = [TransitMode.CycleHired]
            break
        case 2:
            self.modes = [TransitMode.Car]
            break
        default:
            self.modes = [TransitMode.CycleHired, TransitMode.Car]
        }
        self.refreshData()
    }

    func refreshData() {
        self.navigationItem.rightBarButtonItem?.title = self.location?.title
        StopsModel.sharedInstance.setLocation(self.location!.location, types: self.modes)
    }
    
    @IBAction func chooseLocation(sender: UIBarButtonItem) {
        
        let action = UIAlertController(title:"Choose Location", message:nil, preferredStyle: .ActionSheet)
        
        StopsModel.sharedInstance.demoLocations.forEach { demoLocation in
            action.addAction(UIAlertAction(title: demoLocation.title, style: .Default, handler: { _ in
                self.location = demoLocation
                self.refreshData()
            }))
        }
        
        if action.popoverPresentationController == nil {
            action.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: nil))
        }
        action.popoverPresentationController?.barButtonItem = sender
        self.presentViewController(action, animated: true, completion: nil)
    }
}
