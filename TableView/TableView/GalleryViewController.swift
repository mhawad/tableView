//
//  GalleryViewController.swift
//  TableView
//
//  Created by Mirna Helmy on 12/21/22.
//https://www.youtube.com/watch?v=oyKY9UW9-2M
//collectioview storyboard https://www.youtube.com/watch?v=aU_kTzMZHQ8


import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var galleryView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        galleryView.dataSource = self
        galleryView.delegate = self
        galleryView.collectionViewLayout = UICollectionViewFlowLayout()
        
    }
    


}



extension GalleryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesStory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = galleryView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath) as! GalleryCollectionViewCell
        
        cell.setup(with: imagesStory[indexPath.row])
        return cell
    }
}


extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (UIScreen.main.bounds.width/3) - 20,
                      height: (UIScreen.main.bounds.width/2) - 50)
        
//        return CGSize(width: (UIScreen.main.bounds.width/3) - 20,
//                      height: (UIScreen.main.bounds.height/3) - 20
//                      )
    }
}



extension GalleryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(imagesStory[indexPath.row].title)
    }
}
