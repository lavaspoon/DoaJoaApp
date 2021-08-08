//
//  WebViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/09.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import WebKit

class WebViewController : UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WebViewController - viewDidLoad()")
        let myChannelUrl = URL(string: "https://devlava.tistory.com")
        self.myWebView.load(URLRequest(url: myChannelUrl!))
    }
}
