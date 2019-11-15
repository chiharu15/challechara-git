//
//  ThirdViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/06.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "meibo1.png")
        print(Singleton.sharedInstance.num!)
        print(Singleton.sharedInstance.money)
    }
    @IBAction func backMemberButton(segue: UIStoryboardSegue){
    }
    
    
}

