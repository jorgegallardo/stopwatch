//
//  ViewController.swift
//  Stopwatch
//
//  Created by Jorge Gallardo on 8/2/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    var timer = NSTimer()
    var time = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        self.timerLabel.text = "0"
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    func increaseTimer() {
        time++
        self.timerLabel.text = String(time)
    }
}