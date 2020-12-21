//
//  LayingOutUsingPhi.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct LayingOutUsingPhi: View {
    var body: some View {
        GeometryReader { gr in
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    // Adjust the height to be 38% of the device height
                    .frame(height: gr.size.height * 0.38)
                    .overlay(Text("Height: \(gr.size.height * 0.38)"))
                Rectangle()
                    .fill(Color.purple)
                    .overlay(Text("Height: \(gr.size.height * 0.62)"))
            }
            .font(.largeTitle)
        }
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct LayingOutUsingPhi_Previews: PreviewProvider {
    static var previews: some View {
        LayingOutUsingPhi()
    }
}
