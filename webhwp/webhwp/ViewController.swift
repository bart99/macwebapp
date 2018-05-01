//
//  ViewController.swift
//  webhwp
//
//  Created by sungho park on 2018. 4. 30..
//  Copyright © 2018년 sungho park. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate, WKNavigationDelegate, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        <#code#>
    }
    

    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.navigationDelegate = self
        self.webView.uiDelegate = self
        
        // Do any additional setup after loading the view.
        //        let preferences = WKPreferences()
        //        preferences.javaScriptEnabled = true
        //        let configuration = WKWebViewConfiguration()
        //        configuration.preferences = preferences
        
        webView.frame = view.bounds
        view.addSubview(webView)
        
        let url = URL(string: "https://www.apple.com")
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

