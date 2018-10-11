//
//  Category.swift
//  Swag
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var image: String
    private(set) public var label: String
    
    init(label: String, image: String) {
        self.image = image
        self.label = label
    }
}
