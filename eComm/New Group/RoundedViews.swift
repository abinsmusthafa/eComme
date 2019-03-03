//
//  RoundedViews.swift
//  eComm
//
//  Created by Abins Musthafa on 03/03/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import Foundation
import UIKit

class RoundedButton :UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        
    }
}

class RoundedView : UIView{
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
        layer.shadowColor = AppColors.Blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
        
    }
}
class RoundedImage :UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        
    }
    
}
