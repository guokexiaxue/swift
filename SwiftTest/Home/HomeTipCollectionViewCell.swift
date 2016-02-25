//
//  HomeTipCollectionViewCell.swift
//  SwiftTest
//
//  Created by py on 16/2/25.
//  Copyright © 2016年 py. All rights reserved.
//

import UIKit

class HomeTipCollectionViewCell: UICollectionViewCell {
 
    var xxLable:UILabel?
    
    
    override init(frame: CGRect) {
        
      super.init(frame: frame)
        
        xxLable = UILabel(frame: frame);
        xxLable?.text = "嘻嘻嘻嘻嘻嘻"
        self.addSubview(xxLable!)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

  
}
