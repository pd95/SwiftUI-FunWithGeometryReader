//
//  GettingSizeWithGeometryReader.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct GettingSizeWithGeometryReader: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                Text("Height: \(gr.size.height)")
                Text("Width: \(gr.size.width)")
            }
        }
        .font(.largeTitle)
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct GettingSizeWithGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GettingSizeWithGeometryReader()
    }
}
