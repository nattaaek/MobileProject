//
//  TableViewController.swift
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

class TableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        arrayOfCellData = [
            cellData(cell : 1, text: "vegetable", img: UIImage(named: "./Assets/vegetable.svg")),
            cellData(cell : 2, text: "fruit", img: UIImage(named: "./Assets/apple.svg")),
            cellData(cell : 3, text: "animal", img: UIImage(named: "./Assets/animal.svg"))
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            
            cell.mainImg.image = arrayOfCellData[indexPath.row].img
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 200
        
    }
    
}
