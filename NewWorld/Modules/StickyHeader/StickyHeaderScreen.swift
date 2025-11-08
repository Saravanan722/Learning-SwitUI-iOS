//
//  StickyHeaderScreen.swift
//  NewWorld
//
//  Created by Innocrux on 10/09/24.
//

import SwiftUI
import ScalingHeaderScrollView

struct StickyHeaderScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedImage: String = "Frame 1"
    @State private var isLoading: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.black
            ScalingHeaderScrollView {
                VStack {
                    HStack {
                        HStack(spacing: 20) {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.white)
                                .frame(width: 24, height: 24)
                                .clipShape(Circle())
                            
                            Text("Search")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Image(systemName: "photo.fill")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundStyle(.white)
                                .frame(width: 24, height: 24)
                            
                        }
                    }
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(.black)
                            .frame(width: 24, height: 24)
                        
                        Text("What do you want to listen to?")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .padding()
                    .background(.white)
                    .frame(height: 48)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                }
                .padding(.horizontal)
                .background(.black)
                
            } content: {
//                ForEach(0..<100) { i in
//                    Text("Item \(i)")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(.blue)
//                        .clipShape(.rect(cornerRadius: 25))
//                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Browse all")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundStyle(.white)
                    ForEach(0..<5) { _ in
                        HStack {
                            Image("Collection (1)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 102)
                            
                            Image("Collection (2)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 102)
                        }
                        
                        HStack {
                            Image("Collection (3)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 102)
                            
                            Image("Collection (1)")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 102)
                        }
                    }
                }
                .padding(.horizontal)
                Spacer()
            }
            .pullToRefresh(isLoading: $isLoading) {
                changeImage()
            }
            .allowsHeaderCollapse()
            .height(min: 100, max: 250)
            .background(.black)
//            .ignoresSafeArea(.all)

//            Button("", action: { self.presentationMode.wrappedValue.dismiss() })
//                .buttonStyle(CircleButtonStyle(imageName: "arrow.backward"))
//                .padding(.leading, 16)
        }
        .ignoresSafeArea(.all)
    }
    
    private func changeImage() {
        selectedImage = selectedImage == "Frame 1" ? "Frame 7" : "Frame 1"
        isLoading = false
    }
}

#Preview {
    StickyHeaderScreen()
}
