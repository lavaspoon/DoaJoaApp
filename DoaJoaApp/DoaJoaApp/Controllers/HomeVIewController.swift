//
//  HomeVIewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/12.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class HomeViewControllerController : UIViewController {
    @IBOutlet weak var firstItemBtn: UIButton!
    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController-viewDidLoad()")
    }
    func onChangeProfileImage (){
        print("HomeViewControllerController-onChangeProfileImage() called")
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
         print("HomeViewControllerController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func onfirstItemBtnClicked(_ sender: UIButton) {
        print("HomeViewControllerController-onfirstItemBtnClicked() called")
    }
    @IBAction func oneditProfileBtnClicked(_ sender: UIButton) {
                print("HomeViewControllerController-oneditProfileBtnClicked() called")
    }
    
}
