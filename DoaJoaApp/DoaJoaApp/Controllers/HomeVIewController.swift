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
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController-viewDidLoad()")    }
    func onChangeProfileImage (){
        print("HomeViewControllerController-onChangeProfileImage() called")
    }
    @IBAction func onfirstItemBtnClicked(_ sender: UIButton) {
        print("HomeViewControllerController-onfirstItemBtnClicked() called")
    }
    
}
