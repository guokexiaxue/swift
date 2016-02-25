//
//  HomeTipBtn.swift
//  SwiftTest
//
//  Created by py on 16/2/25.
//  Copyright © 2016年 py. All rights reserved.
//

import UIKit

class HomeTipBtn: UIButton {

    
    override func titleRectForContentRect(contentRect: CGRect) -> CGRect {
        
        return CGRectMake(0, 0, contentRect.width, contentRect.width)
    }
    
    
    override func imageRectForContentRect(contentRect: CGRect) -> CGRect {
        return CGRectMake(0,  contentRect.width, contentRect.width, contentRect.height - contentRect.width)
    }
}
