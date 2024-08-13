//
//  ViewController.swift
//  SlideshowApp
//
//  Created by KAIHATSU124 on 2024/07/22.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer!
    //画像設定
    var imageIndex = 0
    let imageName:String = ""
    let imageNames = [
        "gu.png",
        "choki.png",
        "pa.png"
    ]
    @IBOutlet weak var image: UIImageView!//画像
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imagename = imageNames[imageIndex]
        let Image = UIImage(named:imagename)
        image.image = Image
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewController取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているxに画像？を代入して渡す
        resultViewController.image = imageNames[imageIndex]
        if self.timer != nil {
                    self.timer.invalidate()   // タイマーを停止する
                    self.timer = nil          // startTimer() の self.timer == nil で判断するために、 self.timer = nil としておく
                }
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
    weak var timerLabel: UILabel!
    //再生ボタン設定
  
    //再生ボタン IBAction
    @objc func updateTimer(_ timer: Timer){
        // 次の画像に変更+1?
        imageIndex += 1
        if imageIndex >= 3{
            imageIndex = 0
        }
        let imagename = imageNames[imageIndex]
        let Image = UIImage(named:imagename)
        image.image = Image
    }
    @IBOutlet weak var button1: UIButton!
    @IBAction func startTimer(_ sender: Any) {
        // 再生ボタンを押すとタイマー作成、始動２秒ごと
        if timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            //再生　停止切り替え
            button1.setTitle("停止",for: UIControl.State.normal)
        }else {
            self.timer.invalidate()
            timer = nil
            //停止　再生切り替え
            button1.setTitle("再生",for: UIControl.State.normal)
        }
        if timer == nil
        {
            nextbutton.isEnabled = true
        }else{
            nextbutton.isEnabled = false
        }
        if timer == nil
        {
            backbutton.isEnabled = true
        }else{
            backbutton.isEnabled = false
        }
    }
    // 進むボタン IBAction
    @IBOutlet weak var nextbutton:UIButton!
    @IBAction func next(){
        // 次の画像に変更+1?
        imageIndex += 1
        if imageIndex >= 3{
            imageIndex = 0
        }
        let imagename = imageNames[imageIndex]
        let Image = UIImage(named:imagename)
        image.image = Image
        
    }
    // 戻るボタン IBAction
    @IBOutlet weak var backbutton:UIButton!
    @IBAction func back(){
        // 前の画像-1?
        imageIndex -= 1
        if imageIndex <= -1{
            imageIndex = 2
        }
        let imagename = imageNames[imageIndex]
        let Image = UIImage(named:imagename)
        image.image = Image
       
    }
}
