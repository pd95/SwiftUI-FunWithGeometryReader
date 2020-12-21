//
//  ParallaxScrolling.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct ParallaxScrolling: View {
    var body: some View {
        ScrollView {
            ZStack {
                GeometryReader { gr in
                    Image("map")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 1)
                        .scaleEffect(1.8)
                        .opacity(0.4)
                        // Subtract half the offset
                        .offset(y: -gr.frame(in: .global).minY / 2)

                }
                
                VStack(spacing: 40) {
                    Text("UTAH")
                        .font(.system(size: 30, weight: .black))
                    Tile(imageName: "Arches", tileLabel: "Arches")
                    Tile(imageName: "Canyonlands", tileLabel: "Canyonlands")
                    Tile(imageName: "BryceCanyon", tileLabel: "Bryce Canyon")
                    Tile(imageName: "GoblinValley", tileLabel: "Goblin Valley")
                    Tile(imageName: "Zion", tileLabel: "Zion")
                }
                .padding(.horizontal, 40)
            }
            .edgesIgnoringSafeArea(.vertical)
        }
    }
}

struct ParallaxScrolling_Previews: PreviewProvider {
    static var previews: some View {
        ParallaxScrolling()
    }
}
