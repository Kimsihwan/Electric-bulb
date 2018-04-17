//
//  ViewController.swift
//  Electric bulb
//
//  Created by D7702_10 on 2018. 4. 17..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    var chk = true
    var count = 0
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "lamp_0.png")
    }
    
    @IBAction func btnst(_ sender: Any) {
        chk = false
        myTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(change), userInfo: nil, repeats: true)
        
    }
    @IBAction func btnStop(_ sender: Any) {
        myTimer.invalidate()
        
    }
    @objc func change(){
        
        if count == 1{
            count = 0
        } else{
            count = count + 1
        }
        
        image.image = UIImage(named: "lamp_\(count)")
    }
    


}

