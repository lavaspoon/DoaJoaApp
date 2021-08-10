//
//  CustomPopUpViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/07/29.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class CustomPopUpViewController : UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var subscribeBtn: UIButton!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var gotoKakaoBtn: UIButton!
    @IBOutlet weak var changeTextBtn: UIButton!
    @IBOutlet weak var blogBtn: UIButton!
    
    var subscribeBtnCompletionClosure: (()->Void)?
    var myPopUpDelegate : PopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        subscribeBtn.layer.cornerRadius = 10
        gotoKakaoBtn.layer.cornerRadius = 10
        changeTextBtn.layer.cornerRadius = 10
        blogBtn.layer.cornerRadius = 10
    }
    
    //MARK: IBAction
    @IBAction func gotoBlogBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - gotoBlogBtnClicked() called")
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationName), object: nil)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func onBgBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onBgBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func onSubscribeBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onSubscribeBtnClicked() called")
        self.dismiss(animated: true, completion: nil)
        //컴플레션 블록 호출
        if let subscribeBtnCompletionClosure = subscribeBtnCompletionClosure{
            //메인에 알린다
            subscribeBtnCompletionClosure()
        }
    }
    @IBAction func ongotoKakaoBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - ongotoKakaoBtnClicked() called")
        myPopUpDelegate?.ongotoKakaoBtnClicked()
    }
    @IBAction func onchangeTextBtnClicked(_ sender: UIButton) {
        print("CustomPopUpViewController - onchangeTextBtnClicked() called")
        myPopUpDelegate?.onchangeTextBtnClicked()
    }
    
    
}
