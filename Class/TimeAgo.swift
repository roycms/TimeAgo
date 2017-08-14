//
//  TimeAgo.swift
//  TimeAgo
//
//  Created by roycms on 2017/3/15.
//  Copyright © 2017年 北京三芳科技有限公司. All rights reserved.
//


import Foundation

public extension NSDate {
    public func ago() -> String {
        return funTimeAgo(self as Date)
    }
    
    public var timeAgo:String{
        get{
            return funTimeAgo(self as Date)
        }
    }
}
public extension Double {
    
    public func ago() -> String {
        return funStampTimeAgo(self as Double)
    }

    public var timeAgo:String{
        get{
            return funStampTimeAgo(self as Double)
        }
    }
}

func funStampTimeAgo(_ date: Double) -> String{
    
    return funTimeAgo(NSDate(timeIntervalSince1970: TimeInterval(date)) as Date)
}

func funTimeAgo_en(_ date: Date) -> String {
    
    let calendar = Calendar.current
    let now = Date()
    let unitFlags: NSCalendar.Unit = [.second, .minute, .hour, .day, .weekOfYear, .month, .year]
    let components = (calendar as NSCalendar).components(unitFlags, from: date, to: now, options: [])
    
    if let year = components.year, year >= 2 {
        return "\(year) " + NSLocalizedString("yearsAgo",comment:"years ago")
    }
    
    if let year = components.year, year >= 1 {
        return  NSLocalizedString("LastYear",comment:"Last year")
    }
    
    if let month = components.month, month >= 2 {
        return "\(month) " + NSLocalizedString("monthsAgo",comment:"months ago")
    }
    
    if let month = components.month, month >= 1 {
        return NSLocalizedString("LastMonth",comment:"Last month")
    }
    
    if let week = components.weekOfYear, week >= 2 {
        return "\(week) " + NSLocalizedString("weeksAgo",comment:"weeks ago")
    }
    
    if let week = components.weekOfYear, week >= 1 {
        return NSLocalizedString("LastWeek",comment:"Last week")
    }
    
    if let day = components.day, day >= 2 {
        return "\(day) " + NSLocalizedString("daysAgo",comment:"days ago")
    }
    
    if let day = components.day, day >= 1 {
        return  NSLocalizedString("Yesterday",comment:"Yesterday")
    }
    
    if let hour = components.hour, hour >= 2 {
        return "\(hour) " + NSLocalizedString("hoursAgo",comment:"hours ago")
    }
    
    if let hour = components.hour, hour >= 1 {
        return NSLocalizedString("AnHourAgo",comment:"An hour ago")
    }
    
    if let minute = components.minute, minute >= 2 {
        return "\(minute) " + NSLocalizedString("minutesAgo",comment:"minutes ago")
    }
    
    if let minute = components.minute, minute >= 1 {
        return  NSLocalizedString("AMinuteAgo",comment:"A minute ago")
    }
    
    if let second = components.second, second >= 3 {
        return "\(second) " + NSLocalizedString("secondsAgo",comment:"seconds ago")
    }
    
    return NSLocalizedString("JustNow",comment:"Just now")
    
}
func funTimeAgo(_ date: Date) -> String {
    
    let calendar = Calendar.current
    let now = Date()
    let unitFlags: NSCalendar.Unit = [.second, .minute, .hour, .day, .weekOfYear, .month, .year]
    let components = (calendar as NSCalendar).components(unitFlags, from: date, to: now, options: [])
    
    if let year = components.year, year >= 2 {
        return "\(year) 年前"
    }
    
    if let year = components.year, year >= 1 {
        return "去年"
    }
    
    if let month = components.month, month >= 2 {
        return "\(month) 月前"
    }
    
    if let month = components.month, month >= 1 {
        return "上个月"
    }
    
    if let week = components.weekOfYear, week >= 2 {
        return "\(week) 星期前"
    }
    
    if let week = components.weekOfYear, week >= 1 {
        return "上个星期"
    }
    
    if let day = components.day, day >= 2 {
        return "\(day) 天前"
    }
    
    if let day = components.day, day >= 1 {
        return "昨天"
    }
    
    if let hour = components.hour, hour >= 2 {
        return "\(hour) 小时前"
    }
    
    if let hour = components.hour, hour >= 1 {
        return "1小时前"
    }
    
    if let minute = components.minute, minute >= 2 {
        return "\(minute) 分钟前"
    }
    
    if let minute = components.minute, minute >= 1 {
        return "1分钟前"
    }
    
    if let second = components.second, second >= 3 {
        return "\(second) 秒前"
    }
    
    return "刚刚"
    
}


