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
    @IBOutlet weak var sleepLabel: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ProjectViewController-viewDidLoad()")

        profileImage.layer.cornerRadius = profileImage.frame.height / 2
        //profileImage.layer.borderWidth = 1
        //profileImage.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        //라벨에 이미지 삽입
        if let text = heightLabel.text {
            //NSMutableAttributedString -> 특정 텍스트의 색상 및 폰트를 변경할 때 사용
            let attributedString = NSMutableAttributedString(string: "")
            //NSTextAttachment -> 텍스트 첨부 개체
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = UIImage(named: "baby-boy")
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
            //NSAttributedString -> String에 대한 Attribute들에 대한 정보를 가지고 있는 객체
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
        if let text = sleepLabel.text {
            let attributedString = NSMutableAttributedString(string: "")
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = UIImage(named: "sleep")
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
            attributedString.append(NSAttributedString(attachment: imageAttachment))
            attributedString.append(NSAttributedString(string: "밤잠: 9시간"))
            sleepLabel.attributedText = attributedString
            sleepLabel.sizeToFit()
        }
        if let text = drinkLabel.text {
            let attributedString = NSMutableAttributedString(string: "")
            let imageAttachment = NSTextAttachment()
            imageAttachment.image = UIImage(named: "milk-bottle")
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
            attributedString.append(NSAttributedString(attachment: imageAttachment))
            attributedString.append(NSAttributedString(string: "수유: 1000ml"))
            drinkLabel.attributedText = attributedString
            drinkLabel.sizeToFit()
        }
           
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("ProjectViewController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    
}
