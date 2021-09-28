//
//  RDataModel.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/09/27.
//  Copyright © 2021 lavaspoon. All rights reserved.
//
import RealmSwift
import Foundation

class Person: Object {
    @objc dynamic var id:Int = 0
    @objc dynamic var age:Int = 0
    @objc dynamic var name:String = ""
    
    // id 가 고유 값입니다.
    override static func primaryKey() -> String? {
      return "id"
    }
}





