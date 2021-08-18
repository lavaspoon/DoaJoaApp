//
//  CircleButton.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/18.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import Foundation
import UIKit

// 인터페이스 빌더에서 디자인으로 확인 가능하게끔
@IBDesignable
class CirCleButton : UIButton {
    // IBInspectable 인스펙터 패널에서 사용될 수 있도록 설정
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
