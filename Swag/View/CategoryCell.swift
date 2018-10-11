//
//  CategoryCell.swift
//  Swag
//
//  Created by Prudhvi Gadiraju on 10/10/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var lbl: UILabel!

    func updateCell(category: Category) {
        bg.image = UIImage(named: category.image)
        lbl.text = category.label
    }
}
