//
//  ViewController.swift
//  TimeAgo
//
//  Created by roycms on 2017/3/15.
//  Copyright © 2017年 北京三芳科技有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        print("\timeage:\n\(NSDate().timeAgo)")
        
        print("\timeage:\n\(1489552542.timeAgo)")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

