//
//  HomeVC.swift
//  Sidebar Menu
//
//  Created by Sushil Rathaur on 09/06/20.
//  Copyright © 2020 AppCodeZip. All rights reserved.
//

import UIKit
import WebKit


class FirstVC: UIViewController,WKNavigationDelegate {
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        let url = URL(string: "https://www.appcodezip.com/p/about-us-appcodezip-if-you-have-any.html")!
               webView.load(URLRequest(url: url))
               let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
               toolbarItems = [refresh]
               navigationController?.isToolbarHidden = false
    }
    
    override func loadView() {
           webView = WKWebView()
           webView.navigationDelegate = self
           view = webView
       }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    title = webView.title
    }
}
