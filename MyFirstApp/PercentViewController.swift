//
//  PercentViewController.swift
//  MyFirstApp
//
//  Created by takuyamorimatsu on 2018/11/03.
//  Copyright © 2018年 test. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
    
    var price: Int = 0
    @IBOutlet weak var percentField: UITextField!
    @IBAction func tapButton(_ sender: UIButton) {
        if let val = sender.currentTitle {
            if val == "C" {
                percentField.text = "0"
                return
            }
            onTap(s: val)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewController = segue.destination as! ResultViewController
        
        viewController.price = price
        if let percent = Int(percentField.text!) {
            viewController.percent = percent
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func onTap(s: String) {
        let value = percentField.text! + s
        if let price = Int(value) {
            percentField.text = "\(price)"
        }
    }
}
