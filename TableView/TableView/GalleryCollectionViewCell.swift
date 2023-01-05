//
//  GalleryCollectionViewCell.swift
//  TableView
//
//  Created by Mirna Helmy on 12/21/22.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var galleryImageView: UIImageView!
    
    @IBOutlet weak var galleryLabel: UILabel!
    func setup(with image: Image) {
        galleryImageView.image = image.image
        galleryLabel.text = image.title
    }
}
