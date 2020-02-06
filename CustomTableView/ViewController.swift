//
//  ViewController.swift
//  CustomTableView
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var datas:[String] = ["FirstTableViewCell","SecondTableViewCell", "SecondTableViewCell", "SecondTableViewCell", "FirstTableViewCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        switch datas[indexPath.row] {
        case "SecondTableViewCell":
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            cell.listenToSwitchChanges { (sliderVal) in
                self.datas.append("")
                self.tableView.reloadData()
            }
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            cell.listenToSliderChanges { (sliderVal) in
                self.datas.append("")
                self.tableView.reloadData()
            }
            return cell
        }
        
    }
    
}

extension ViewController:UITableViewDelegate {
    func tableView(_ ResultList: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ ResultList: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

