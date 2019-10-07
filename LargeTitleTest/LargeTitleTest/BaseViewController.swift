//
//  BaseViewController.swift
//  LargeTitleTest
//
//  Created by Andreas Wörner on 28.09.19.
//  Copyright © 2019 Andreas Wörner. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let btn = UIButton()
        btn.setTitle("next", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(btn)
        NSLayoutConstraint.activate([
            btn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btn.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        btn.addTarget(self, action: #selector(tapNext), for: .touchUpInside)
    }
    
    func getNextViewController() -> UIViewController? {
        return nil
    }
    
    @objc func tapNext() {
        guard let vc = getNextViewController() else { return }
        navigationController?.pushViewController(vc, animated: true)
    }

}

class FirstViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
    override func getNextViewController() -> UIViewController? {
        return SecondViewController()
    }
    
}

class SecondViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
    override func getNextViewController() -> UIViewController? {
        return ThirdViewController()
    }
    
}

class ThirdViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func getNextViewController() -> UIViewController? {
        return FourthViewController()
    }
    
}

class FourthViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fourth"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
    }
    
}
