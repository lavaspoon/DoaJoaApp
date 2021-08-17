//
//  HomeVIewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/12.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class HomeViewControllerController : UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController-viewDidLoad()")
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }
    func onChangeProfileImage (){
        print("HomeViewControllerController-onChangeProfileImage() called")
    }
    // 홈뷰 메서드 세팅
    
}
