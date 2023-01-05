//
//  VideoCell.swift
//  TableView
//
//  Created by Mirna Helmy on 12/7/22.
//

import UIKit

class VideoCell: UITableViewCell {


    @IBOutlet weak var vidoeimageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        vidoeimageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}
