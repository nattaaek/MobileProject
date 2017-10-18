//
//  MarketViewController.swift
//  HarvestFarm
//
//  Created by Alzack Connell on 10/15/2560 BE.
//  Copyright © 2560 Alzack Connell. All rights reserved.
//

import UIKit

class MarketViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var name = ""
    var arr = [""]
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if name == "vegetable" {
            var arr = ["ข้าวเสาไห้","ข้าวเหนียว","ข้าวหอมมะลิ","ผักชี","ต้นหอม"]
        }
        else if name == "fruit"{
            var arr = ["แอปเปิ้ล","สัปปรด","อะโวคาโด้","ทับทิม"]
        }
        else if name == "animal"{
            var arr = ["หมู","หมา","กา","ไก่"]
        }
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = name;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        title.text = arr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    


}
