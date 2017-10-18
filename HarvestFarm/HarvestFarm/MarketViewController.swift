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
    var price = [""]
    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if name == "vegetable" {
             arr = ["ข้าวเสาไห้","ข้าวเหนียว","ข้าวหอมมะลิ","ผักชี","ต้นหอม"]
           price = ["12","13","14","15","16"]
        }
        else if name == "fruit"{
             arr = ["แอปเปิ้ล","สัปปรด","อะโวคาโด้","ทับทิม"]
           price = ["12","13","14","15","16"]
        }
        else if name == "animal"{
             arr = ["หมู","หมา","กา","ไก่"]
           price = ["12","13","14","15","16"]
        }
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = name;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.textLabel?.text = arr[indexPath.row]
        cell.detailTextLabel?.text = price[indexPath.row]
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "itemDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detail = segue.destination as! DetailItemViewController
        detail.name = arr[(tableView.indexPathForSelectedRow?.row)!]
    }

}
