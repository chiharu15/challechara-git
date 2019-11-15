//
//  YamadaViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/10.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit

class Yamada2ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       imageView.image = UIImage(named: "Yamada2.png")
       print(Singleton.sharedInstance.num)
        
    }
    
    
    
}

