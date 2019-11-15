//
//  FirstViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/06.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit
import CoreMotion

class FirstViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var tubView: UITabBarItem!
    
    @IBOutlet weak var StepLabel: UILabel!
    
    let pedometer:classMeterManager = classMeterManager()//プロパティでCMPedometerをインスタンス化。
    var num:Int = 0
    let text = ["おはよう！",
                "調子はどう？",
                "一緒に頑張ろうね！",
                "わーい！"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        pedometer.getStepNumber {(pedometerData, error) in
//            let step : Int = Int(truncating: pedometerData!.numberOfSteps)
//            print(step)
//            print("歩数は\(pedometerData!.numberOfSteps)")
//            print("距離は\(String(describing: pedometerData?.distance))") // 距離
//            print("登った回数\(String(describing: pedometerData?.floorsAscended))") // 上った回数
//            print("降った回数\(String(describing: pedometerData?.floorsDescended))")
//            self.StepLabel.text = String(format: "歩数 : %d", step)
//
//            if step < 250{
//                self.imageView.image = UIImage(named: "joshi1-5.png")
//            }
//            else if 250 <= step && step < 260 {
//                self.imageView.image = UIImage(named: "joshi1-4.png")
//            }
//
//            else if 260 <= step && step < 270 {
//                self.imageView.image = UIImage(named: "joshi1-3.png")
//            }
//            else if 270 <= step && step < 280 {
//                self.imageView.image = UIImage(named: "joshi1-2.png")
//            }
//            else if 280 <= step {
//                self.imageView.image = UIImage(named: "joshi1-1.png")
//            }
        
        }
        // 完全に全ての読み込みが完了時に実行
        override func viewDidAppear(_ animated: Bool) {
            pedometer.getStepNumber {(pedometerData, error) in
                let step : Int = Int(truncating: pedometerData!.numberOfSteps)
                print(step)
                print("歩数は\(pedometerData!.numberOfSteps)")
                print("距離は\(String(describing: pedometerData?.distance))") // 距離
                print("登った回数\(String(describing: pedometerData?.floorsAscended))") // 上った回数
                print("降った回数\(String(describing: pedometerData?.floorsDescended))")
                self.StepLabel.text = String(format: "歩数 : %d", step)
                
                if step < 250{
                    self.imageView.image = UIImage(named: "joshi1-5.png")
                }
                else if 250 <= step && step < 260 {
                    self.imageView.image = UIImage(named: "joshi1-4.png")
                }
                    
                else if 260 <= step && step < 270 {
                    self.imageView.image = UIImage(named: "joshi1-3.png")
                }
                else if 270 <= step && step < 280 {
                    self.imageView.image = UIImage(named: "joshi1-2.png")
                }
                else if 280 <= step {
                    self.imageView.image = UIImage(named: "joshi1-1.png")
                }
                //imageView.image = UIImage(named: "joshi1-1.png")
                self.helloWorldLabel.text = self.text[self.num]
        }
    }
            
//            // viewDidLoadが完了時に実行
//        override func viewWillAppear(_ animated: Bool) {
//                pedometer.getStepNumber {(pedometerData, error) in
//                    let step : Int = Int(truncating: pedometerData!.numberOfSteps)
//                    print(step)
//                    print("歩数は\(pedometerData!.numberOfSteps)")
//                    print("距離は\(String(describing: pedometerData?.distance))") // 距離
//                    print("登った回数\(String(describing: pedometerData?.floorsAscended))") // 上った回数
//                    print("降った回数\(String(describing: pedometerData?.floorsDescended))")
//                    self.StepLabel.text = String(format: "歩数 : %d", step)
//
//                    if step < 250{
//                        self.imageView.image = UIImage(named: "joshi1-5.png")
//                    }
//                    else if 250 <= step && step < 260 {
//                        self.imageView.image = UIImage(named: "joshi1-4.png")
//                    }
//
//                    else if 260 <= step && step < 270 {
//                        self.imageView.image = UIImage(named: "joshi1-3.png")
//                    }
//                    else if 270 <= step && step < 280 {
//                        self.imageView.image = UIImage(named: "joshi1-2.png")
//                    }
//                    else if 280 <= step {
//                        self.imageView.image = UIImage(named: "joshi1-1.png")
//                    }
//                    //imageView.image = UIImage(named: "joshi1-1.png")
//                    self.helloWorldLabel.text = self.text[self.num]
//            }
    
   // }
    
   
    @IBAction func Button(_ sender: Any) {
        self.helloWorldLabel.text = text[num]
        if(num < 3){
            //self.imageView.image = UIImage(named: "sample.png")
            num += 1
        }
        else{
            num = 0
            //self.imageView.image = UIImage(named: "sample2.png")
        }
    
    }
    
    
//    let pedometer:CMPedometer = CMPedometer()//プロパティでCMPedometerをインスタンス化。
//
//    func getStepNumber(callback: @escaping CMPedometerHandler) -> Void {
//
//        if(!CMPedometer.isStepCountingAvailable()) { //歩数が取得できるかどうかチェックしてます
//            print("cannot get stepcount")
//        }
//        let calendar = Calendar(identifier: .gregorian)
//        let from = calendar.date(from: DateComponents(year: 2019, month: 11, day: 8))
//        let to = calendar.date(from: DateComponents(year: 2019, month: 11, day: 9))
//
//        if from == nil {return}
//        if to == nil {return}
//
//        //let from = Date(timeIntervalSinceNow: -10000)//-10000は適当な数字です。適宜最適な数字に書き換えてください。
//        //let to = Date()//現在を取得してます。
//
//        pedometer.queryPedometerData(from: from!, to: to!, withHandler:callback)
//
//    }
//
    
    
    
}

