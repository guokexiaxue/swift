//
//  HomeViewController.swift
//  SwiftTest
//
//  Created by py on 16/2/25.
//  Copyright © 2016年 py. All rights reserved.
//  首页

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate{
    
    let width = UIScreen.mainScreen().bounds.size.width;
    
    var collectionView:UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()

        var layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: CGRectMake(0, 400, width, 300), collectionViewLayout: layout);
        collectionView! .registerClass(HomeTipCollectionViewCell.self, forCellWithReuseIdentifier:"cell")
        collectionView? . dataSource = self
        collectionView? . delegate = self
        collectionView?.backgroundColor = UIColor.whiteColor()
        layout.itemSize = CGSizeMake(100, 100)
        self.view.addSubview(collectionView!)
        
        // Do any additional setup after loading the view.
    }

     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell  = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)as! HomeTipCollectionViewCell
      //  cell.xxLable?.text = "夏雪"
        cell.backgroundColor = UIColor.redColor()
        return cell
    }

}
