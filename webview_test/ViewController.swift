//
//  ViewController.swift
//  webview_test
//
//  Created by Kohei Kataoka on 2019/04/18.
//  Copyright © 2019 SOELU. All rights reserved.
//

import UIKit
import WebKit

let userAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1"

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting UserAgent because freshchat is not displayed if it is default UserAgent.
        self.webView.customUserAgent = userAgent
        if let url = URL(string: "https://www.freshworks.com/live-chat-software/") {
            self.webView.load(URLRequest(url: url))
        }
    }
}
