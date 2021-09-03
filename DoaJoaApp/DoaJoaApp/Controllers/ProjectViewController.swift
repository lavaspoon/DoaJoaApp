//
//  ProjectViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/03.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class ProjectViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ProjectViewController-viewDidLoad()")
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("ProjectViewController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    
}
