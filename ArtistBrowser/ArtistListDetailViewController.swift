//
//  ArtistListDetailViewController.swift
//  ArtistBrowser
//
//  Created by 刘卫斌 on 15/11/2.
//  Copyright © 2015年 yufu. All rights reserved.
//

import UIKit

class ArtistListDetailViewController: UIViewController {

    
    var artistList:ArtistList?
    
    @IBOutlet weak var detailViewCoverImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    
    @IBOutlet weak var artistName01: UILabel!
    @IBOutlet weak var artistName02: UILabel!
    @IBOutlet weak var artistName03: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let currentArtistList = artistList{
            self.detailViewCoverImage.image = currentArtistList.larageIcon!
            self.detailViewCoverImage.backgroundColor = currentArtistList.backgroundColor
            self.detailTitle.text = currentArtistList.title!
            self.detailDescription.text = currentArtistList.destription!
            
            artistName01.text = currentArtistList.artist[0]
            artistName02.text = currentArtistList.artist[1]
            artistName03.text = currentArtistList.artist[2]
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
