//
//   Category.swift
//  coder-swag
//
//  Created by ioannis giannakidis on 30/03/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import Foundation

struct Category {
    private(set) var  title:String
    private(set) var imageName:String
    
    init (title:String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
    
}
