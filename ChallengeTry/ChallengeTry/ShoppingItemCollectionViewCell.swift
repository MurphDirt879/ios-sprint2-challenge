//
//  ShoppingItemCollectionViewCell.swift
//  ChallengeTry
//
//  Created by Ryan Murphy on 5/10/19.
//  Copyright © 2019 Ryan Murphy. All rights reserved.
//

import UIKit

class ShoppingItemCollectionViewCell: UICollectionViewCell {
    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var addedLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func updateViews() {
        guard let shoppingItem = shoppingItem else { return }
            itemNameLabel.text = shoppingItem.name
            imageView.image = UIImage(data: shoppingItem.imageData)

        if shoppingItem.isOnList == true {
            addedLabel.text = "Added"

        } else {
            addedLabel.text = "Not Added"
        }
        }
    }


