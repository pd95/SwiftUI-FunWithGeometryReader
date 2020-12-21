//
//  GettingTheOrigin.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct GRInspector: View {
    let color: Color
    
    var body: some View {
        GeometryReader { gr in
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
                .overlay(
                    VStack {
                        Text("X: \(Int(gr.frame(in: .global).origin.x))")
                        Text("Y: \(Int(gr.frame(in: .global).origin.y))")
                })
        }
        .frame(height: 400)
    }
}

struct GettingTheOrigin: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Origin changes when scrolled")
            
                GRInspector(color: .red)
                GRInspector(color: .yellow)
                GRInspector(color: .orange)
            }
        }
        .font(Font.title2)
        .padding()
    }
}

struct GettingTheOrigin_Previews: PreviewProvider {
    static var previews: some View {
        GettingTheOrigin()
    }
}
