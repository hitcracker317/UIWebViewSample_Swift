//
//  ViewController.swift
//  UIWebViewSample
//
//  Created by 前田 晃良 on 2015/10/11.
//  Copyright (c) 2015年 A.M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlBar: UISearchBar!
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url: NSURL = NSURL(string: "http://google.com")! //urlをセット
        var urlRequest: NSURLRequest = NSURLRequest(URL: url) //urlを元にリクエストを作成
        webView.loadRequest(urlRequest) //リクエストを実行
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            let location = touch.locationInView(webView)
            println(location)
        }
    }
    
    @IBAction func rigthSwipe(sender: AnyObject) {
        //右スワイプで戻る
        //UITouch *touch = touc
        webView.goBack()
    }

    @IBAction func leftSwipe(sender: AnyObject) {
        //左スワイプで進む
        webView.goForward()
    }


}

