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

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ProjectViewController-viewDidLoad()")

        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        //profileImage.layer.borderWidth = 1
        //profileImage.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        //라벨에 이미지 삽입
        if let text = heightLabel.text {
            let attributedString = NSMutableAttributedString(string: "")
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = UIImage(named: "baby-boy")
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
            attributedString.append(NSAttributedString(attachment: imageAttachment))
            attributedString.append(NSAttributedString(string: "키: 65cm"))
            heightLabel.attributedText = attributedString
            heightLabel.sizeToFit()
        }
        if let text = weightLabel.text {
            let attributedString = NSMutableAttributedString(string: "")
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = UIImage(named: "maternity")
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
            attributedString.append(NSAttributedString(attachment: imageAttachment))
            attributedString.append(NSAttributedString(string: "몸무게: 6.5kg"))
            weightLabel.attributedText = attributedString
            weightLabel.sizeToFit()
        }
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("ProjectViewController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    
}
