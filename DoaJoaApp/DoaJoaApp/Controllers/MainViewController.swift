//
//  ViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/07/25.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import Lottie
import WebKit

let notificationName = "btnClickNotification"

class MainViewController: UIViewController, PopUpDelegate {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var createPopUpBtn: UIButton!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var gotoWebViewBtn: UIButton!
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //노티피케이션이라는 방송 수신기 장착
        NotificationCenter.default.addObserver(self, selector: #selector(loadWebview), name: NSNotification.Name(rawValue: notificationName), object: nil)
        //네비게이션 바 수정
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    @objc fileprivate func loadWebview(){
        print("MainViewController-loadWebview() called")
        let myblogAddress = URL(string: "https://devlava.tstory.com")
        self.myWebView.load(URLRequest(url: myblogAddress!))
    }
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        print("MainViewController-onCreatePopUpBtnClicked() called!!!")
        //스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "PopUp", bundle: nil)
        //스토리보드 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "AlertPopUpVC") as! CustomPopUpViewController
        //뷰 컨트롤러가 보여지는 스타일
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        //뷰 컨트롤러가 사라지는 스타일
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.subscribeBtnCompletionClosure = {
            print("컴플리션 블록 호출")
            let myChannelUrl = URL(string: "https://devlava.tistory.com")
            self.myWebView.load(URLRequest(url: myChannelUrl!))
            print("웹뷰")
        }
        // ?
        customPopUpVC.myPopUpDelegate = self
        
        self.present(customPopUpVC, animated: true, completion: nil)
    }
    //MARK - PopUpDelegate methods
    func ongotoKakaoBtnClicked() {
        print("MainViewController-ongotoKakaoBtnClicked() called!!!")
        
    }
    func onchangeTextBtnClicked() {
        print("MainViewController-onchangeTextBtnClicked() called!!!")
        testLabel.text = "텍스트바뀜"
    }
    @IBAction func ongotoWebViewBtn(_ sender: UIButton) {
        print("MainViewController-ongotoWebViewBtn()")
        let storyboard = UIStoryboard.init(name: "WebView", bundle: nil)
        //스토리보드 통해 뷰컨트롤러 가져오기
        let webviewVC = storyboard.instantiateViewController(withIdentifier: "testWebView") as! WebViewController
        //넥비게이터로 수정필요
        self.present(webviewVC, animated: true, completion: nil)
    }
}

