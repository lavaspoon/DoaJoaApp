//
//  ViewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/07/25.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //제목
    var titleLabel : UILabel = {
        let label = UILabel()
<<<<<<< HEAD:DoaJoaApp/DoaJoaApp/ViewController.swift
        label.text = "헬로우 월드"
=======
        label.textColor = .white
        label.text = "헬로우 월드!!!"
>>>>>>> 5142a17f0ad219336994eb2adf325baa9062acac:DoaJoaApp/DoaJoaApp/ViewControllers/MainViewController.swift
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

