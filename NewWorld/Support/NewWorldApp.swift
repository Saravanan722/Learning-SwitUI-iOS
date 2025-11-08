//
//  NewWorldApp.swift
//  NewWorld
//
//  Created by Innocrux on 30/07/24.
//

import SwiftUI

@main
struct NewWorldApp: App {
    @StateObject var viewModel = PlayerViewModel()
    @StateObject var viewModel2 = CompanyList()
    var body: some Scene {
        WindowGroup {
            ParallaxCarouselView()
//            RotationAnimation()
//            HeartRateMeasuringAnimation()
//            AudioVisualizerAnimation()
//            TestView()
//                .environmentObject(viewModel2)
//            GeometryReaderExample()
//            ScrollViewReaderView()
//            ScrollableViewWithSideBar()
//            TabScreen()
//            MainScreen()
//            PagingView()
//            VideoPlayerView(player: viewModel.player, timecodes: viewModel.timecodes)
//            TimecodeListView(player: viewModel.player, timecodes: viewModel.timecodes)
//            AnyLayoutOverView()
//            ConstantBindingView()
//            AnimationForeverView()
//            ScrollViewStartAtBottom()
//            BottomSheetView()
//            GridView()
//            GradientShadowView()
//            AnyLayoutView()
//            GaugeView()
//            TextFieldView()
//            ShareLinkView()
//            NavigationStackNavigationSplitView()
//            MultiDatePickerView()
        }
    }
}
