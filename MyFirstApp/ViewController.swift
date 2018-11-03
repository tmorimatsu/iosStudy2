//
//  ViewController.swift
//  MyFirstApp
//
//  Created by takuyamorimatsu on 2018/11/03.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // @IBOutlet: 予約語@, IB インターフェースビルダー, Outlet
    // StoryBoard上の部品をソースコードから扱えるようにするプロパティ
    //
    
    @IBOutlet weak var priceField: UITextField!
    @IBAction func tap1Button(_ sender: UIButton) {
        
        if let val = sender.currentTitle {
            if val == "C" {
                priceField.text = "0"
                return
            }
            onTap(s: val)
        }
        
//        if sender.currentTitle == "1" {
//            onTap(s:"1")
//        }
//
//        switch sender.currentTitle {
//        case "2":
//            onTap(s: "2")
//        case "5":
//            onTap(s: "5")
//        default: ()
//        }
    }
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // viewの準備ができた時に呼び出されるメソッド
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // メモリが少なくなった時に呼ばれるメソッド. 利用していないのを破棄する処理を記述する必要がある
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewcontroller = segue.destination as!  PercentViewController
        
        if let price = Int(priceField.text!) {
            // 数値を変換した金額を次の画面に設定する
            viewcontroller.price = price
        }
    }
    private func onTap(s: String) {
        let value = priceField.text! + s
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
}

