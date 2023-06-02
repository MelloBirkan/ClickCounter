//
//  ViewController.swift
//  ClickCounter
//
//  Created by Marcello Gonzatto Birkan on 31/05/23.
//

import UIKit

class ViewController: UIViewController {

    var count: Int = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // Button
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
    }


}

