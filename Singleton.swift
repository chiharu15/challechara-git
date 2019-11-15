//
//  Singleton.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/11/11.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

class Singleton: NSObject {
    
    var num : Int!
    var money : Int!
    var str : String!
    
    let pedometer:classMeterManager = classMeterManager()//プロパティでCMPedometerをインスタンス化。
    
    // 初期値をセットするためのプロパティ
    
    //var hoge : String!
    
    class var sharedInstance: Singleton {
        struct Static {
            static let instance : Singleton = Singleton()
            
        }
        return Static.instance
    }
 
    
    // インスタンスの初期化と同時にをプロパティに初期値をセットする
    private override init() {
        super.init()
         pedometer.getStepNumber {(pedometerData, error) in
            let step : Int = Int(truncating: pedometerData!.numberOfSteps)
            print(step)
            if self.money == nil{
                self.money = step
            }
            
        }
        //self.hoge = "初期化"
        if self.num == nil{
            self.num = 0
        }
//        if self.money == nil{
//            self.money = 6000
//        }
//        pedometer.getStepNumber {(pedometerData, error) in
//            let step : Int = Int(truncating: pedometerData!.numberOfSteps)
//            print(step)
//            print("歩数は\(pedometerData!.numberOfSteps)")
//            if self.money == nil{
//                self.money = 6000
//            }
//        }
        
    }
    
}
