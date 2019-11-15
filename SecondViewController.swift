//
//  SecondViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/06.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var checkView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
     @IBOutlet weak var textField1: UITextField!
    
    var num:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "sample3.png")
        checkView.image = UIImage(named: "check1.png")
        
    }
    
    @IBAction func CheckButton(_ sender: Any) {
        if(num % 2 == 1){
            checkView.image = UIImage(named: "check2.png")
        }
        else{
            checkView.image = UIImage(named: "check1.png")
        }
        num += 1
    }
    
    @IBAction func backKadaiButton(segue: UIStoryboardSegue){
    }
    

}

