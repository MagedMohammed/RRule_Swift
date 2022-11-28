//
//  ViewController.swift
//  RRule_Swift
//
//  Created by Maged Mohammed on 11/28/2022.
//  Copyright (c) 2022 Maged Mohammed. All rights reserved.
//

import UIKit
import RRule_Swift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ruleString = "RRULE:FREQ=MONTHLY;DTSTART=20160404T021000Z;COUNT=5;INTERVAL=2;WKST=MO;BYDAY=MO,TU"
        let rule = RecurrenceRule(rruleString: ruleString)
        print(rule)
        print(rule?.allOccurrences())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

