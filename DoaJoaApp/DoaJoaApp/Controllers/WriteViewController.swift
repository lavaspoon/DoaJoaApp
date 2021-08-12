//
//  WriteViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/13.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import YPImagePicker

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
    @IBAction func onEditProfileBtnClicked(_ sender: UIButton) {
        print("WriteViewController-onEditProfileBtnClicked()")
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
