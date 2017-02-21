//
//  ViewController.swift
//  timer
//
//  Created by mlibai on 2017/1/9.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    var couter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    
    @IBAction func startTimer(_ sender: AnyObject) {
        if(isPlaying){
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {
            (timer:Timer) -> Void in
            
//            NSLog("%@\n", 121231)
            
            self.couter +=  0.1;
            self.timeLabel.text = String.init(format: "%.2f", self.couter)
            
        })
        
                NSLog("%s | %d", #function, pthread_getconcurrency())
        isPlaying = true
    }
    
    
    @IBAction func pauset(_ sender: AnyObject) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        sleep(2)
//        timer.invalidate()
//        isPlaying = false
                    NSLog("%s | %d", #function, pthread_getconcurrency())    }
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false
                NSLog("%s | %d", #function, pthread_getconcurrency())
        couter = 0.0
        timeLabel.text = String(couter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel.text = String(couter)
        pauseButton.isEnabled = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

