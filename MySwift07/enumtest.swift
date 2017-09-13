//
//  enumtest.swift
//  MySwift07
//
//  Created by 江宗益 on 2017/9/13.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import Foundation


//列舉
func enumtest(){
    var dir:Direction = .STOP
    dir = .LEFT
//    dir = .RIGHT
    switch dir {
    case .STOP:
        print("STOP")
    case .UP:
        print("UP")
    case .DOWN :
        print("DOWN")
    case .RIGHT:
        print("RIGHT")
    case .LEFT:
        print("LEFT")
    default:
        print("error")
    }
    
    
    var area:Zipcode = .西屯區
    print(area.rawValue)
    
    var status1:IOStatus = .OK
    status1 = .NotFound(101, "1111")
    let status2:IOStatus = .NotFound(102, "22222333")
    
    switch status2 {
    case .NotFound(101, let mesg):
        print("A:\(mesg)")
    case .NotFound(102, _):
        print("B")
   
    default:
        print("XX")
    }
    
}

//定義列舉項目
enum Direction{
    //定義列舉項目
    case UP, DOWN
    case LEFT, RIGHT
    case STOP
}


enum Zipcode:String {
    case 南屯區 = "401"
    case 西屯區 = "402"
    case 北屯區 = "403"
    case 中區 = "404"
}

enum IOStatus {
    case OK
    case NotFound(Int,String)
    case IOERROR(Int,String)
    case PermissionDeny
    case Unknown
}










