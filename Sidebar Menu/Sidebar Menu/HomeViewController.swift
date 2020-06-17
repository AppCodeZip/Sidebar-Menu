//
//  ViewController.swift
//  Sidebar Menu
//
//  Created by Sushil Rathaur on 09/06/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit
import WebKit

class HomeViewController: UIViewController,WKNavigationDelegate {
    
    var delegate: MenuDelegate?
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.appcodezip.com/")!
        webView.load(URLRequest(url: url))
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        setNavigation()

    }
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    func setNavigation(){
        
         self.navigationItem.title = "Home"
       
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal) , style: .plain, target: self, action: #selector(handleMenu))
    }
    @objc func handleMenu(){
           print("Click On menuHandler")
        delegate?.menuHandler(index: -1)
       }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = webView.title
    }
}

