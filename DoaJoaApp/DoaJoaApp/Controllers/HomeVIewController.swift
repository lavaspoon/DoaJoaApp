//
//  HomeVIewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/12.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class HomeViewControllerController : UIViewController {
    //
    @IBOutlet weak var showFieldLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet var itemBtns: [CirCleButton]!
    
    var showFieldString = ""{
        didSet{
            DispatchQueue.main.async { [weak self] in
                guard let self = self else{ return }
                self.showFieldLabel.textColor = .black
                self.showFieldLabel.text = self.showFieldString
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController-viewDidLoad()")
        
        for btnItem in itemBtns {
            btnItem.addTarget(self, action: #selector(onItemBtnsClicked(sender:)), for: .touchUpInside)
        }
    }
    func onChangeProfileImage (){
        print("HomeViewControllerController-onChangeProfileImage() called")
    }
    @IBAction func onBackBtnClicked(_ sender: UIButton) {
        print("HomeViewControllerController-onBackBtnClicked() called")
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func oneditProfileBtnClicked(_ sender: UIButton) {
        print("HomeViewControllerController-oneditProfileBtnClicked() called")
    }
    @objc fileprivate func onItemBtnsClicked(sender : UIButton){
        guard let inputString = sender.titleLabel?.text else{return}
        showFieldString.append(inputString)
    }
 
}
