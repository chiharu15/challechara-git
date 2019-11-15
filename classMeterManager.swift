//
//  class.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/11/09.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import Foundation
import CoreMotion

class classMeterManager{
    
    let pedometer:CMPedometer = CMPedometer()//プロパティでCMPedometerをインスタンス化。
    
    func getStepNumber(callback: @escaping CMPedometerHandler) -> Void {
        
        if(!CMPedometer.isStepCountingAvailable()) { //歩数が取得できるかどうかチェックしてます
            print("歩数が取得できません")
        }
        let calendar = Calendar(identifier: .gregorian)
        let from = calendar.date(from: DateComponents(year: 2019, month: 11, day: 15))
        let to = calendar.date(from: DateComponents(year: 2019, month: 11, day: 16))
        
        if from == nil {return}
        if to == nil {return}
        
        //let from = Date(timeIntervalSinceNow: -10000)//-10000は適当な数字です。適宜最適な数字に書き換えてください。
        //let to = Date()//現在を取得してます。
        
        pedometer.queryPedometerData(from: from!, to: to!, withHandler:callback)
        
    }
}
