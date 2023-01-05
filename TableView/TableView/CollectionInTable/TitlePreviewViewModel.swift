//
//  TitlePreviewViewModel.swift
//  Netflix Clone
//
//  Created by Mirna Helmy on 10/28/22.
//

import Foundation
struct TitlePreviewViewModel {
    let title: String
    let youtubeView: VideoElement
    let titleOverview: String
}



struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
    
}


struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
