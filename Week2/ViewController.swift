//
//  ViewController.swift
//  Week2
//
//  Created by Mac Pro 15 on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var brownView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brownView.layer.cornerRadius = 20
        brownView.clipsToBounds = true
    }
    
    

}

