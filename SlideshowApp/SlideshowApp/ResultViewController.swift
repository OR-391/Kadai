//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by KAIHATSU124 on 2024/07/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var kakudai: UIImageView!
    
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!

    // 受け取るためのプロパティ（変数）を宣言しておく
    var image:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let image = UIImage(named: image)
        kakudai.image = image
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
