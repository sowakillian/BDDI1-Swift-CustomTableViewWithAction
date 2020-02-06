//
//  FirstTableViewCell.swift
//  CustomTableView
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myCrazyImage: UIImageView!
    
    @IBOutlet weak var mySwitchState: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!
    var localCallBack:((Bool)->())? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func switchStateChanged(_ sender: UISwitch) {
        print(sender.isOn)
        
        if let callBack = localCallBack {
            callBack(sender.isOn)
        }
    }
    
    func listenToSwitchChanges( callBack:@escaping (Bool)->() )  {
        self.localCallBack = callBack
    }
    


    
    

}
