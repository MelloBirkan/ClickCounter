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
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        button.addTarget(self, action: #selector(ViewController.changeColorDragExit), for: .touchDragExit)
        
        // Decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 200, y: 200, width: 200, height: 200)
        decrementButton.setTitle("Click to decrement", for: .normal)
        decrementButton.setTitleColor(.red, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.changeColorDragExit), for: .touchDragExit)
    }
    
    
    
    
   @objc func incrementCount() {
       self.count += 1
       self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
    }

    @objc func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.lightGray
}

    @objc func changeColorDragExit() {
        self.view.backgroundColor = UIColor.green
    }
    
}

