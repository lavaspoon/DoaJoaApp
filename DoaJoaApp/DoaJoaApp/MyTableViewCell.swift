//
//  MyTableViewCell.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/30.
//  Copyright © 2021 lavaspoon. All rights reserved.
//
import Foundation
import UIKit

class MyTableViewCell : UITableViewCell {
    
    @IBOutlet weak var userProfileImg: UIImageView!
    
    @IBOutlet weak var userContentLabel: UILabel!
    //셀이 화면에 그려질때
    override func awakeFromNib(){
        super.awakeFromNib()
        print("MyTableViewCell - awakeFromNib() called")
        
        userProfileImg.layer.cornerRadius = userProfileImg.frame.width/2
    }
}
