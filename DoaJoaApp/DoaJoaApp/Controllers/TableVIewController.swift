//
//  TableVIewController.swift
//  DoaJoaApp
//
//  Created by lavaspoon on 2021/08/22.
//  Copyright © 2021 lavaspoon. All rights reserved.
//

import UIKit

class TableViewController : UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    let contentArray = [
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page edit",
        "crambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchan",
        " over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, lo",
        "ere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum ",
        "m Ipsum as their defau",
        "ots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock"
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TableViewController-viewDidLoad()")
        
        //셀의 리소스 파일 가져오기
        let MyTableViewCellNib = UINib(nibName: "MyTableViewCell", bundle: nil)
        //셀에 가져온 리소스 등록
        self.myTableView.register(MyTableViewCellNib, forCellReuseIdentifier: "myTableViewCell")
        self.myTableView.rowHeight = UITableView.automaticDimension
        self.myTableView.estimatedRowHeight = 120
        //중요!
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
}
//위의 뷰 컨트롤러에서 한꺼번에 다 보면 소스가 지저분해지니 extension으로 나눈다.
extension TableViewController : UITableViewDelegate {
    
}

extension TableViewController : UITableViewDataSource{
    //테이블 뷰 셀의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
    }
    //각 셀에대한 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! MyTableViewCell
        cell.userContentLabel.text = contentArray[indexPath.row]
        return cell
    }
}
