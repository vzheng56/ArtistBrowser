//
//  ViewController.swift
//  ArtistBrowser
//
//  Created by 刘卫斌 on 15/11/2.
//  Copyright © 2015年 yufu. All rights reserved.
//

import UIKit

class ArtistListMasterViewController: UIViewController {

    @IBOutlet weak var masterViewImage001: UIImageView!
    @IBOutlet weak var masterViewImage002: UIImageView!
    @IBOutlet weak var masterViewImage003: UIImageView!
    @IBOutlet weak var masterViewImage004: UIImageView!
    @IBOutlet weak var masterViewImage005: UIImageView!
    @IBOutlet weak var masterViewImage006: UIImageView!
    
    var masterViewImageList:[UIImageView]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        masterViewImageList+=[masterViewImage001,masterViewImage002,masterViewImage003,masterViewImage004,masterViewImage005,masterViewImage006]
        
        for index in 0..<masterViewImageList.count{
            let artistList = ArtistList(index: index)
            let currentView = masterViewImageList[index]
            
            currentView.image = artistList.icon
            currentView.backgroundColor = artistList.backgroundColor
        }
        
        if let plistPath = NSBundle.mainBundle().pathForResource("CrazyInformation", ofType: "plist") {
            let plistDic = NSDictionary(contentsOfFile: plistPath)
        }
        
        let treehouseBaseURL = NSURL(string: "https://api.teamtreehouse.com/")
        var treehouseCourseID = 10
        let courseURL = NSURL(string: "/\(treehouseCourseID)", relativeToURL: treehouseBaseURL)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // 触发Segue的时候，调用
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailViewControllerSegue" {
            let detailViewController = segue.destinationViewController as! ArtistListDetailViewController
            let view = sender!.view as! UIImageView
            let index = view.tag
            detailViewController.artistList = ArtistList(index: index)
        }
    }
    
    
    
    
    
    
    @IBAction func artistTouchAction(sender: AnyObject) {
        performSegueWithIdentifier("detailViewControllerSegue", sender: sender)
    }
    
}

