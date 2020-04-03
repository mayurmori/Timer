//
//  ViewController.swift
//  Timer
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOUTLET -
    @IBOutlet weak var lblCounter: UILabel!
    
    // MARK: - PROPERTIES -
    var counter =  0
    var timer = Timer()
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB ACTIONS -
    @IBAction func btnStart_Clicked(_ sender: UIButton) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnStop_Clicked(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @objc func timerAction() {
        counter += 1
        lblCounter.text = "\(counter)"
        print("Counter:\(counter)")
    }
}
