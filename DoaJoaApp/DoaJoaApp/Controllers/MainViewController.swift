//
//  ViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/07/25.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    @IBOutlet weak var createPopUpBtn: UIButton!
    //제목
    var titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "헬로우 월드!!!"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "70366-blender-edit")
        animView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFit
        return animView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //네비게이션 바 수정
        self.navigationController?.isNavigationBarHidden = true
        
        view.addSubview(animationView)
        view.backgroundColor = .black
        animationView.center = view.center
        
        
        
        animationView.play{ (finish) in
            print("애니메이션 종료")
            
            self.view.backgroundColor = .white
            
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
        
    }
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        print("MainViewController-onCreatePopUpBtnClicked() called")
    }
    

}

