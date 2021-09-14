//
//  EditViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/08.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import ZImageCropper

class EditViewController : UIViewController {
    @IBOutlet weak var TestImage: UIImageView!
    override func viewDidLoad() {
           super.viewDidLoad()
            print("EditViewController-viewDidLoad()")
    }
    //MARK: TEST 작업창 
    @IBAction func onCropImageBtnClicked(_ sender: UIButton) {
        print("EditViewController-onCropImageBtnClicked() called")
        let croppedImage = ZImageCropper.cropImage(ofImageView: TestImage, withinPoints: [
        CGPoint(x: 0, y: 0),   //Start point
        CGPoint(x: 100, y: 0),
        CGPoint(x: 100, y: 100),
        CGPoint(x: 0, y: 100)  //End point
        ])
    }
}
