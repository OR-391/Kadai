//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by KAIHATSU124 on 2024/07/10.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBAction func handle(_ sender:Any){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = Name.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
}

