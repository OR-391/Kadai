//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by KAIHATSU124 on 2024/07/12.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var Name: UILabel!
    var name:String=""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let result = name
               Name.text = "こんにちは \(result) さん"    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
