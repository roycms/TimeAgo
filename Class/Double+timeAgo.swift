//
//  Double+timeAgo.swift
//  TimeAgo
//
//  Created by roycms on 2017/3/15.
//  Copyright © 2017年 北京三芳科技有限公司. All rights reserved.
//

import Foundation

public extension Double {
    
    public func ago() -> String {
        return funStampTimeAgo(self as Double)
    }
    
    public var timeAgo:String{
        
        return funStampTimeAgo(self as Double)
        //        get{
        //            return funStampTimeAgo(self as Double)
        //        }
    }
}
