//
//  RegisterViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/07/27.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var btnForLoginViewController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //네비게이션 바 수정
        self.navigationController?.isNavigationBarHidden = true
    }
    @IBAction func onLoginViewController(_ sender: UIButton) {
        print("RegisterViewController-onLoginViewController clicked")
        self.navigationController?.popViewController(animated: true)
    }
}
