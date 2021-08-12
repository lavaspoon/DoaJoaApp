//
//  WriteViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/13.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class WriteViewController : UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var gotoEditProfileBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WriteViewController-viewDidLoad()")
        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        gotoEditProfileBtn.layer.cornerRadius = 10
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("WriteViewController-onBackBtnClicked()")
        self.navigationController?.popViewController(animated: true)
    }
}
