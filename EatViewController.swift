//
//  EatViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/11/08.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit

class EatViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var randomNumber = 0
        //0, 1, 2の数値をランダムに算出(乱数)
        randomNumber = Int.random(in: 0..<3)
        
        if randomNumber == 0{
            imageView.image = UIImage(named: "eat背景.png")
        }
        else if randomNumber == 1{
            imageView.image = UIImage(named: "eat2背景.png")
        }
        else if randomNumber == 2{
            imageView.image = UIImage(named: "eat3背景.png")
        }
        
        
        //imageView.image = UIImage(named: "eat背景.png")
        imageView2.image = UIImage(named: "joshi1-1.png")
        Singleton.sharedInstance.num! = Singleton.sharedInstance.num! + 10
        //Singleton.sharedInstance.str = "あいうえお"
        print(Singleton.sharedInstance.num!)
        Singleton.sharedInstance.money! = Singleton.sharedInstance.money! - 500
        print(Singleton.sharedInstance.money!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backButton(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}

