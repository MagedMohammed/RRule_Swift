//
//  ViewController.swift
//  RRule_Swift
//
//  Created by Maged Mohammed on 11/28/2022.
//  Copyright (c) 2022 Maged Mohammed. All rights reserved.
//

import UIKit
import RRule_Swift
import EventKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var rule = RecurrenceRule(frequency: .monthly)
        rule.startDate = Date()
        rule.recurrenceEnd = EKRecurrenceEnd(occurrenceCount: 12)
        rule.interval = 1
        rule.byweekday = [.friday]
        rule.bysetpos = [-1]
        print(rule.allOccurrences())
        print(rule.toRRuleString())
//        rule = RecurrenceRule(rruleString: "RRULE:INTERVAL=1;FREQ=MONTHLY;COUNT=12;BYDAY=-1TU;WKST=MO;UNTIL=20231031T033000Z;DTSTART=20221129T030000Z")
//        print(rule?.allOccurrences())
//        print(rule?.toRRuleString())
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

