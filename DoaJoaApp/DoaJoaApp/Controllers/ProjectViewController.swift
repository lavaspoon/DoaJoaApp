//
//  ProjectViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/03.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class ProjectViewController : UIViewController {
    @IBOutlet weak var profileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ProjectViewController-viewDidLoad()")

        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("ProjectViewController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    
}
