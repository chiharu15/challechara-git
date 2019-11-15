//
//  FourthViewController.swift
//  StepProject
//
//  Created by 渡邊友花 on 2019/10/06.
//  Copyright © 2019 渡邊友花. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var imageView6: UIImageView!
    @IBOutlet weak var imageView7: UIImageView!
    @IBOutlet weak var imageView8: UIImageView!
    @IBOutlet weak var imageView9: UIImageView!
    
    @IBOutlet weak var foodsLabel1: UILabel!
    @IBOutlet weak var foodsLabel2: UILabel!
    @IBOutlet weak var foodsLabel3: UILabel!
    @IBOutlet weak var foodsLabel4: UILabel!
    @IBOutlet weak var foodsLabel5: UILabel!
    @IBOutlet weak var foodsLabel6: UILabel!
    @IBOutlet weak var foodsLabel7: UILabel!
    @IBOutlet weak var foodsLabel8: UILabel!
    @IBOutlet weak var foodsLabel9: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    
    var tapCount:Int = 0
    //var love:Int = Singleton.sharedInstance.num!
    //var money:Int = Singleton.sharedInstance.love!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ok")
        //let text = String(format: "親愛度 : %d", love)
        
        // Do any additional setup after loading the view, typically from a nib.
        imageView1.image = UIImage(named: "image1.png")
        imageView2.image = UIImage(named: "image2.png")
        imageView3.image = UIImage(named: "image3.png")
        imageView4.image = UIImage(named: "image4.png")
        imageView5.image = UIImage(named: "image5.png")
        imageView6.image = UIImage(named: "image6.png")
        imageView7.image = UIImage(named: "image7.png")
        imageView8.image = UIImage(named: "image8.png")
        imageView9.image = UIImage(named: "image9.png")
        
        foodsLabel1.text = "サラダチキン"
        foodsLabel2.text = "サラダチキン"
        foodsLabel3.text = "たまご"
        foodsLabel4.text = "ひややっこ"
        foodsLabel5.text = "もずく"
        foodsLabel6.text = "きゃべつ"
        foodsLabel7.text = "プリン"
        foodsLabel8.text = "バナナ"
        foodsLabel9.text = "プロテイン"
        
        
//        print(Singleton.sharedInstance.num!)
//        print(Singleton.sharedInstance.money!)
//        loveLabel.text = String(format: "親愛度 : %d, お金 : %d", Singleton.sharedInstance.num!, Singleton.sharedInstance.money!)
        
    }
    
    // viewDidLoadが完了時に実行
    override func viewWillAppear(_ animated: Bool) {
        print(Singleton.sharedInstance.num!)
        print(Singleton.sharedInstance.money!)
        loveLabel.text = String(format: "親愛度 : %d, お金 : %d", Singleton.sharedInstance.num!, Singleton.sharedInstance.money!)
    }
    //loveLabel.text = String(format: "親愛度 : %d, お金 : %d", Singleton.sharedInstance.num!, Singleton.sharedInstance.love!)
    
    @IBAction func Button1(_ sender: Any) {
        
        //カスタマイズを作成
        let alertController = UIAlertController(title: "確認", message: "サラダチキンを購入してもよろしいですか？", preferredStyle: .alert)
        
        //ダイアログに表示させるOKボタンを作成
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            //次の画面に遷移
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        //アクションを追加
        alertController.addAction(defaultAction)
        
        
        //キャンセルの選択肢を定義
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        //アクションを追加
        alertController.addAction(cancelAction)
        
        //ダイアログの表示
        present(alertController, animated: true, completion: nil)
        
        
    }
    @IBAction func Buttun2(_ sender: Any) {
        
        let alertController = UIAlertController(title: "確認", message: "サラダチキンを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)

        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func Button3(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "たまごを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun4(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "ひややっこを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun5(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "もずくを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun6(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "きゃべつを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun7(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "プリンを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun8(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "バナナを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func Bottun9(_ sender: Any) {
        let alertController = UIAlertController(title: "確認", message: "プロテインを購入してもよろしいですか？", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler:{(action: UIAlertAction) in
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        })
        alertController.addAction(defaultAction)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func backFoodsButton(segue: UIStoryboardSegue){
    }
}




//    @IBAction func goNectButton(_ sender: Any) {
//        self.helloWorldLabel.text = text[num]
//        if(num < 3){
//            self.imageView.image = UIImage(named: "sample.png")
//            num += 1
//        }
//        else{
//            num = 0
//            self.imageView.image = UIImage(named: "sample2.png")
//        }
//    }
    

//class FourthViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//
//    var myCollectionView : UICollectionView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSizeMake(50, 50)//大きさ
//        layout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16)//マージン
//        layout.headerReferenceSize = CGSizeMake(100,30)
//        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        myCollectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        
//        myCollectionView.delegate = self
//        myCollectionView.dataSource = self
//        self.view.addSubview(myCollectionView)
//        
//    }
//    
//    //Cellがクリックされた時によばれます
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        println("選択しました: \(indexPath.row)")
//    }
//
//    //Cellの合計数
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 50
//    }
//
//    //Cellオブジェクトを返す。ここでカスタムセルにしたりするとそれぞれ変更できる。
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! UICollectionViewCell
//        cell.backgroundColor = UIColor.redColor()
//
//        //-----
//        //おまけ、Swiftサラリーマンのおっさんの顔
//        let url = NSURL(string:"http://swift-salaryman.com/files/image/page_top.gif");
//        var err: NSError?;
//        var imageData = NSData(contentsOfURL:url!,options: NSDataReadingOptions.DataReadingMappedIfSafe, error: &err)!;
//        var img = UIImage(data:imageData);
//        let iv = UIImageView(image:img);
//        iv.frame = CGRectMake(0, 0, 50, 50);
//        iv.backgroundColor = UIColor.greenColor();
//        cell.addSubview(iv);
//        //-----
//
//        return cell
//    }
//
//}
//class FourthViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
//
//    @IBOutlet weak var foodsTable: UITableView!
//
//    //ユーザー名
//    var userNames = ["Alessa","Andreia","Khalil","Carrie","Janie","Fernando","Teresa","Charlize","Philip","Alexander"]
//
//    //ユーザーツイート
//    var tweets = ["hello","good morning","We’re committing Twitter to help increase the collective health","Back in San Francisco and meeting our first candidate","officially the best office.","Japanese Mascots getting stuck in doors","Good to be in business with Tony and Lauren","“It started with a tweet.” Doesn’t it always?","Our short film, Sister Hearts, is a #Webbys finalist for Best Branded Long Form Video","Its so hot today"]
//
//    //ユーザー画像
//    var userPhotos = ["1","2","3","4","5","6","7","8","9","10"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    //テーブルのセクションの数を決める
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    //テーブルの行数(Tweetの数)のを決める
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//
//    //テーブルの1行(セル)の設定をする
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = self.foodsTable.dequeueReusableCell(withIdentifier: "FoodsCell", for: indexPath) as? FoodsTableViewCell
//
//        cell?.profileName.text = self.userNames[indexPath.row] //①
//        cell?.tweet.text = self.tweets[indexPath.row] //②
//        cell?.profileImage.image = UIImage(named: self.userPhotos[indexPath.row]) //③
//
//        cell?.profileImage.layer.cornerRadius = 50 //④
//
//        return cell!
//    }
//}
