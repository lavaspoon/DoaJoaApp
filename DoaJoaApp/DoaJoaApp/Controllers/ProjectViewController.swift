//
//  ProjectViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/03.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import ZImageCropper
import CoreGraphics
import YPImagePicker

class ProjectViewController : UIViewController {
    @IBOutlet weak var profileImage: ZImageCropperView!

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var sleepLabel: UILabel!
    @IBOutlet weak var drinkLabel: UILabel!
    
    @IBOutlet weak var editImgBtn: UIButton!
    
    var croppedImage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ProjectViewController-viewDidLoad()")
        
        self.editImgBtn.layer.cornerRadius = 10
        //profileImage.layer.cornerRadius = profileImage.frame.height / 2
        //profileImage.layer.borderWidth = 1
        //profileImage.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        //버튼클릭 액션 설정(Swift를 사용한 코드를 Objective-C 코드와 상호작용 시키기 위해 쓰는 키워드)
        self.editImgBtn.addTarget(self, action: #selector(editProfileClicked), for: .touchUpInside)
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
        croppedImage = profileImage.cropImage()
    }
    
    // 프사 변경 버튼이 클릭되었을때
    @objc fileprivate func editProfileClicked(){
        print("MainViewController-editProfileClicked()")
        
        //카메라 라이브러리 세팅
        var config = YPImagePickerConfiguration()
        //config.screens = [.library, .photo, .video]
        config.screens = [.library]
        
        let picker = YPImagePicker(configuration: config)
        //사진이 선택되었을때
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage) // Transformed image, can be nil
                print(photo.exifMeta) // Print exif meta data of original image.
                //프사 이미지를 변경
                self.profileImage.image = photo.image
            }
            //피커창 선택창 닫기
            picker.dismiss(animated: true, completion: nil)
        }
        // 사진 선택창 보여주기
        present(picker, animated: true, completion: nil)
    }
    
}
