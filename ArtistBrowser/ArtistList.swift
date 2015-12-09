//
//  ArtistList.swift
//  ArtistBrowser
//
//  Created by 刘卫斌 on 15/11/5.
//  Copyright © 2015年 yufu. All rights reserved.
//

import Foundation
import UIKit

struct ArtistList {
    
    var title:String?
    var destription:String?
    var icon:UIImage?
    var larageIcon:UIImage?
    var artist:[String] = []
    var backgroundColor:UIColor = UIColor.clearColor()
    
    init(index:Int){
        let artistLibrary = ArtistLibrary().library
        let currentLib = artistLibrary[index]
        
        self.title = currentLib["title"] as! String!
        self.destription = currentLib["description"] as! String!
        
        let iconName = currentLib["icon"] as! String!
        self.icon = UIImage(named: iconName)
        
        let largeIconName = currentLib["largeIcon"] as! String!
        self.larageIcon = UIImage(named: largeIconName)
        
        self.artist += currentLib["artists"] as! [String]
        
        let colorDictionary = currentLib["backgroundColor"] as! [String:CGFloat]
        self.backgroundColor = rgbColorFromDictionary(colorDictionary)
        
        
    }
    
    func rgbColorFromDictionary(colorDictionary:[String:CGFloat])->UIColor{
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}