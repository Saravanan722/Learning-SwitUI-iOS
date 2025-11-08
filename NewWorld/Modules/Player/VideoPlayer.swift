//
//  VideoPlayer.swift
//  NewWorld
//
//  Created by Innocrux on 08/08/24.
//

import SwiftUI
import AVKit

struct VideoPlayer: UIViewControllerRepresentable {
    
    @Binding var player: AVPlayer
    
    func makeUIViewController(
        context:
        UIViewControllerRepresentableContext<VideoPlayer>
    ) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        return controller
    }
    
    func updateUIViewController(
        _ uiViewController: AVPlayerViewController,
        context: UIViewControllerRepresentableContext<VideoPlayer>
    ) {
    }
}
