//
//  EditViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/08.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import ZImageCropper
import CoreGraphics

class EditViewController : UIViewController {
    @IBOutlet weak var TestImage: ZImageCropperView!
    var croppedImage: UIImage?
    
    override func viewDidLoad() {
           super.viewDidLoad()
            print("EditViewController-viewDidLoad()")
    }
    //MARK: TEST 작업창 
    @IBAction func onCropImageBtnClicked(_ sender: UIButton) {
        print("EditViewController-onCropImageBtnClicked() called")
        croppedImage = TestImage.cropImage()
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("EditViewController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
}
