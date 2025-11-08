//
//  PlayerViewModel.swift
//  NewWorld
//
//  Created by Innocrux on 08/08/24.
//

import Foundation
import AVKit

class PlayerViewModel: ObservableObject {
    
    @Published var player = AVPlayer()
    
//    let url = "https://video-previews.elements.envatousercontent.com/h264-video-previews/315b5d0f-cca5-41c0-824f-e99e2dcfbe6d/40108191.mp4"
    let url = "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
    
    let timecodes: [Timecode] = [
        Timecode(title: "Intro", time: CMTime(seconds: 0, preferredTimescale: 1)),
        Timecode(title: "Chapter - 1", time: CMTime(seconds: 9, preferredTimescale: 1)),
        Timecode(title: "Chapter - 2", time: CMTime(seconds: 30, preferredTimescale: 1)),
        Timecode(title: "Chapter - 3", time: CMTime(seconds: 55, preferredTimescale: 1)),
        Timecode(title: "Chapter - 4", time: CMTime(seconds: 69, preferredTimescale: 1))
    ]
    
    init() {
        if let videoURL = URL(string: url) {
            player = AVPlayer(url: videoURL)
        }
    }
}
