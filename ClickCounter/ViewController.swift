//
//  ViewController.swift
//  ClickCounter
//
//  Created by Marcello Gonzatto Birkan on 31/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func incrementCount() {
            self.count += 1
            self.label.text = "\(self.count)"
        }
}

