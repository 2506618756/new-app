//
//  ViewController.swift
//  new app
//
//  Created by S20181105302 on 2019/12/18.
//  Copyright © 2019 s20181105302. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var sum = "0.0"
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var jindu: UIView!
    
    @IBOutlet weak var shunoe: UITextField!
    
    @IBOutlet weak var caozuofu: UITextField!
    
    @IBOutlet weak var shutwo: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    
    @IBAction func jisuan(_ sender: Any) {
        let value1:Double = Double(shunoe.text!)!
        let value2:Double = Double(shutwo.text!)!
        switch caozuofu.text {
        case "+":
            let jieguo:String = String(value1+value2)
            result.text = jieguo
        case "-":
            let jieguo:String = String(value1-value2)
            result.text = jieguo
        case "*":
            let jieguo:String = String(value1*value2)
            result.text = jieguo
        case "/":
            let jieguo:String = String(value1/value2)
            result.text = jieguo
        default:
            break;
        }
    }
    @IBAction func imgchangce(_ sender: Any) {
        let ran = Int.random(in: 0...5)
        img.image = UIImage(named: "Image\(ran)")
    }
    var cnt = 10
    @IBAction func count(_ sender: Any) {
            jindu.frame.size.width = jindu.frame.size.width - view.frame.width / 10
        if cnt == 0{
            let alertController = UIAlertController(title: "时间已经耗光",message: "", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "好的", style: .default, handler: {
                action in print("点击了确定")})
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
        cnt -= 1
    }
}

