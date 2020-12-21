//
//  IntroductionView.swift
//  GeometryReader
//
//  Created by Philipp on 21.12.20.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
         VStack {
            Text("GeometryReader")

            Image(systemName: "bolt.circle.fill")

            GeometryReader { geometry in
                 Image(systemName: "bolt.circle.fill")
            }.border(Color.green)

        }.font(.largeTitle)
    }
}


struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
