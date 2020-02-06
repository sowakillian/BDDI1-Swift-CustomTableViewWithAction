//
//  FirstTableViewCell.swift
//  CustomTableView
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var priceValueLabel: UILabel!
    
    @IBOutlet weak var mySlider: UISlider!
    
    var localCallBack:((Float)->())? = nil 
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        priceValueLabel.text = "\(Int(sender.value))"
        print(sender.value)
        
        if let callBack = localCallBack {
            callBack(sender.value)
        }
    }
    
    func listenToSliderChanges( callBack:@escaping (Float)->() )  {
        self.localCallBack = callBack
    }
    
    

}
