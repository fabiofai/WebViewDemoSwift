//
//  ViewController.swift
//  WebViewDemoSwift
//
//  Created by Fabio on 22/6/2017.
//  Copyright © 2017 Fabio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func googleBtnClicked(sender: UIButton) {
        let webView = WebViewController()
        webView.url = URL.init(string: "http://www.google.com")
        self.navigationController?.pushViewController(webView, animated: true)
    }

    @IBAction func youtubeBtnClicked(sender: UIButton) {
        let webView = WebViewController()
        webView.url = URL.init(string: "http://www.youtube.com")
        self.navigationController?.pushViewController(webView, animated: true)
    }

}
