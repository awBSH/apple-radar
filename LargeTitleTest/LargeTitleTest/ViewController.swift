//
//  ViewController.swift
//  LargeTitleTest
//
//  Created by Andreas Wörner on 28.09.19.
//  Copyright © 2019 Andreas Wörner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nc = UINavigationController(rootViewController: FirstViewController())
        present(nc, animated: true, completion: nil)
    }


}

