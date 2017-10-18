//
//  DetailItemViewController.swift
//  HarvestFarm
//
//  Created by admin on 10/18/2560 BE.
//  Copyright © 2560 Alzack Connell. All rights reserved.
//

import UIKit

class DetailItemViewController: UIViewController {

    var name = ""
    @IBOutlet weak var lblname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblname.text = name

        // Do any additional setup after loading the view.
    }

}
