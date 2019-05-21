//
//  ViewController.swift
//  microphone-access-wkwebview
//
//  Created by Andreas Wörner on 21.05.19.
//

import UIKit
import SafariServices
import WebKit

class ViewController: UIViewController {
    
    private let urlStr = "https://www.onlinemictest.com/"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray

        let btnSafariViewController = UIButton(type: .infoDark)
        btnSafariViewController.setTitle("open in SFSafariViewController", for: .normal)
        btnSafariViewController.addTarget(self, action: #selector(handleSafariViewController), for: .touchUpInside)
        view.addSubview(btnSafariViewController)
        btnSafariViewController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btnSafariViewController.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            btnSafariViewController.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
        let urlLabel = UILabel()
        urlLabel.text = urlStr
        view.addSubview(urlLabel)
        urlLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            urlLabel.topAnchor.constraint(equalTo: btnSafariViewController.bottomAnchor, constant: 40),
            urlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            urlLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        guard let url = URL(string: urlStr) else {
            return
        }

        let webView = WKWebView()
        view.addSubview(webView)
        webView.load(URLRequest(url: url));
        webView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: urlLabel.bottomAnchor, constant: 8),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    @objc
    func handleSafariViewController() {
        guard let url = URL(string: urlStr) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
    }

}

