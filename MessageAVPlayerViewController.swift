//
//  MessageAVPlayerViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/10.
//  Copyright © 2019 渡邊友花. All rights reserved.
//
import UIKit
import MediaPlayer
import AVKit


class MessageAVPlayerViewController: UIViewController {
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setVideoView()
//        // Do any additional setup after loading the view.
//    }
    
//    func setVideoView(){
//        //動画ファイルのURLを取得
//        let path = Bundle.main.path(forResource: "videoplayback", ofType: "mp4")
//        let url = URL.init(fileURLWithPath: path as! String)
//        let player:AVPlayer = AVPlayer.init(url: url)
//        var controller:AVPlayerViewController = AVPlayerViewController.init()
//        controller.player = player
//        controller.view.frame = CGRect(x:0, y:0, width:self.view.bounds.size.width,height:self.view.bounds.size.height)
//        self.addChild(controller)
//        self.view.addSubview(controller.view)
//        NotificationCenter.default.addObserver(self, selector:#selector(MessageAVPlayerViewController.didPlayToEndTime), name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
//        player.play()
//    }
//
//    @objc func didPlayToEndTime () {
//        print("finish!!")
//        self.dismiss(animated: false, completion: nil)
//    }

//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        let moviePath: String? = Bundle.main.path(forResource: bundleDataName, ofType: bundleDataType)
//        playMovieFromPath(moviePath: moviePath)
//    }
    
}
