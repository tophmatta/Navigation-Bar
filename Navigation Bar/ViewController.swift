//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Toph Matta on 9/21/15.
//  Copyright (c) 2015 Toph Matta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = NSTimer()
    var time = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    func result() {
        time++
        timeLabel.text = String(time)
    }
    
    @IBAction func startButtonPressed(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil , repeats: true)
        
    }
    
    
    @IBAction func stopButtonPressed(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    
    @IBAction func resetButtonPressed(sender: AnyObject) {
        timeLabel.text = String(0)
        time = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

