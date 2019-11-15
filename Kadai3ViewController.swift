//
//  Kadai3ViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/11/14.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit



class Kadai3ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var pictureImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    //「カメラを起動」をタップすると実行
    @IBAction func cameraButtonAction(_ sender: Any) {
        //カメラがき利用可能かどうかチェック
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            print("カメラは利用できます")
            //UIImagePickerControllerのインスタンスを作成
            let imagePickerController = UIImagePickerController()
            //sourseTypeにcameraを設定
            imagePickerController.sourceType = .camera
            //delegate設定
            imagePickerController.delegate = self
            //モーダルビューで表示
            present(imagePickerController, animated:true, completion: nil)
        } else {
            print("カメラは利用できません")
        }
    }
    
    //撮影が終わった時に呼ばれるdelegateメソッド
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]){
        
        //撮影した画像を配置したpictureImageに渡す
        pictureImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        //モーダルビューを閉じる
        dismiss(animated: true, completion: nil)
    }
    
}
