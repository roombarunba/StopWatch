//
//  ViewController.swift
//  StopWatch
//
//  Created by nttr on 2017/07/20.
//  Copyright © 2017年 nttr.hirtoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!;
    
    var timer: Timer!;
    
    var count: Double = 0.00;
    
    var bool: Bool = true;
    
    var testFormatter = DateFormatter();
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func start(){
        if(bool){
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self,
                                         selector: #selector(ViewController.update),
                                         userInfo: nil, repeats: true);
            bool = false;
        }
    
    }
    
    @IBAction func stop(){
        timer.invalidate();
        bool = true;
    }
    
    func update(){
        count += 0.01;
        // フォーマット指定子
        timerLabel.text = String(format: "%.2f", count);
    }


}

