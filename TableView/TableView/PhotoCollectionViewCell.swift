//
//  PhotoCollectionViewCell.swift
//  CollectionViews
//
//  Created by Mirna Helmy on 12/19/22.
//

import UIKit

//each cell of the collectionView
class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier =  "PhotoCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named: "Image 1"), UIImage(named: "Image 2"), UIImage(named: "Image 3"), UIImage(named: "Image 4"), UIImage(named: "Image 5"), UIImage(named: "Image 6"), UIImage(named: "Image 7"), UIImage(named: "Image 8"), UIImage(named: "Image 9"), UIImage(named: "Image 10"), UIImage(named: "Image 11"), UIImage(named: "Image 12"), UIImage(named: "Image 13"), UIImage(named: "Image 14"), UIImage(named: "Image 15"), UIImage(named: "Image 16"),
            UIImage(named: "Image 17"), UIImage(named: "Image 18"), UIImage(named: "Image 19"),
            UIImage(named: "Image 20")

        ].compactMap({$0})

        imageView.image = images.randomElement()
        
        /*
//        let image1 = UIImage(named: "Image 1")
//        let image2 = UIImage(named: "Image 2")
//        let image3 = UIImage(named: "Image 3")
//        let image4 = UIImage(named: "Image 4")
//        
//        
//       var images2: [UIImage] = []
//
//        
//        images2.append(image1!)
//        images2.append(image2!)
//        images2.append(image3!)
//        
//        imageView.image = images2[indexPath].row
*/
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//       // imageView.image = nil
//    }
    
    
}
