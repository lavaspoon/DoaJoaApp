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
    
    var subscribeBtnCompletionClosure: (()->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 20
        subscribeBtn.layer.cornerRadius = 20
        
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
    
}
