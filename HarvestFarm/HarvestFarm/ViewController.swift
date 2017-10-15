//
//  ViewController.swift
//  HarvestFarm
//
//  Created by Alzack Connell on 10/15/2560 BE.
//  Copyright © 2560 Alzack Connell. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let img : UIImage!
}



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfCellData = [cellData]()
    
    
    override func viewDidLoad() {
        arrayOfCellData = [
            cellData(cell : 1, text: "vegetable", img: UIImage(named: "vegetable.png")),
            cellData(cell : 2, text: "fruit", img: UIImage(named: "apple.png")),
            cellData(cell : 3, text: "animal", img: UIImage(named: "animal.png"))
        ]
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.mainImg.image = arrayOfCellData[indexPath.row].img
        cell.mainLabel.text = arrayOfCellData[indexPath.row].text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indßexPath: IndexPath) -> CGFloat {
        
        return 200
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "marketSegue"{
            let market = segue.destination as! MarketViewController
            market.name = arrayOfCellData[(tableView.indexPathForSelectedRow?.row)!].text
        }

        

}}

