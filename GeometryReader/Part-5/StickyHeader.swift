//
//  StickyHeader.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct StickyHeader: View {
    var body: some View {
        ScrollView {
            ZStack {
                // Bottom Layer
                VStack(spacing: 20) {
                    Tile(imageName: "Arches", tileLabel: "Arches")
                    Tile(imageName: "Canyonlands", tileLabel: "Canyonlands")
                    Tile(imageName: "BryceCanyon", tileLabel: "Bryce Canyon")
                    Tile(imageName: "GoblinValley", tileLabel: "Goblin Valley")
                    Tile(imageName: "Zion", tileLabel: "Zion")
                }
                .padding(.horizontal, 20)
                .padding(.top, 320)

                // Top Layer (Header)
                GeometryReader { gr in
                    VStack {
                        Text("UTAH")
                            .font(.system(size: 70, weight: .black))
                            .foregroundColor(.white)
                            .opacity(0.8)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .background(
                                Image("Utah")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill))
                            .frame(height:
                                    self.calculateHeight(minHeight: 120,
                                                         maxHeight: 300,
                                                         yOffset: gr.frame(in: .global).origin.y))
                            
                            // Offset just on the Y axis
                            .offset(y: gr.frame(in: .global).origin.y < 0 // Is it going up?
                                        ? abs(gr.frame(in: .global).origin.y) // Push it down!
                                        : -gr.frame(in: .global).origin.y) // Push it up!
                        Spacer() // Push header to top
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.vertical)
    }
    
    func calculateHeight(minHeight: CGFloat, maxHeight: CGFloat, yOffset: CGFloat) -> CGFloat {
        // If scrolling up, yOffset will be a negative number
        if maxHeight + yOffset < minHeight {
            // SCROLLING UP
            // Never go smaller than our minimum height
            return minHeight
        }
        
        // SCROLLING DOWN
        return maxHeight + yOffset
    }
}

struct StickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        StickyHeader()
    }
}
