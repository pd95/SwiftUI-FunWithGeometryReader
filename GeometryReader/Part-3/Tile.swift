//
//  Tile.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct Tile: View {
    var imageName = ""
    var tileLabel = ""
    
    var body: some View {
        Text(tileLabel)
            .padding(.bottom, 20)
            .opacity(0.85)
            .font(.system(size: 30, weight: .black))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .frame(height: 200, alignment: .bottom)
            .background(
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .gray, radius: 10, x: 0, y: 5)
    }
}
 
struct Tile_Previews: PreviewProvider {
    static var previews: some View {
        Tile(imageName: "Arches", tileLabel: "Arches")
    }
}

