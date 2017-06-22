//
//  WebViewController.swift
//  WebViewDemoSwift
//
//  Created by Fabio on 22/6/2017.
//  Copyright © 2017 Fabio. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var backBtn: UIButton?

    @IBOutlet var webView: UIWebView?
    @IBOutlet var webBackBtn: UIButton?
    @IBOutlet var webNextBtn: UIButton?
    @IBOutlet var webStopBtn: UIButton?
    @IBOutlet var webReloadBtn: UIButton?
    var url: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
        webView?.delegate = self
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        webView?.loadRequest(URLRequest.init(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnClicked(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func webBackBtnClicked(sender: UIButton) {
        webView?.goBack()
    }

    @IBAction func webNextBtnClicked(sender: UIButton) {
        webView?.goForward()
    }

    @IBAction func webStopBtnClicked(sender: UIButton) {
        webView?.stopLoading()
    }

    @IBAction func webReloadBtnClicked(sender: UIButton) {
        webView?.reload()
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        NSLog("Start Loading")
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        NSLog("Finish Loading")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        NSLog("Fail To Load")
    }

}
