//
//  ContentView.swift
//  Omnitrix WatchKit Extension
//
//  Created by Amol Kumar on 2022-01-06.
//

import SwiftUI

enum Aliens: Int {
    case Diamondhead
    case Cannonbolt
    case XLR8
    case Fireblast
    case Fourarms
    case GrayMatter
    case Ripjaws
    case Upgrade
    case Wildmutt
    case Stinkfly
}

struct ContentView: View {
    @State var scrollAmount = 0.0
    
    var body: some View {
        ZStack {
            Image("Watchface")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(scrollAmount*90))
            
            Image("\(Aliens(rawValue: Int(scrollAmount))!)")
                .resizable()
                .padding(.all, 40)
                .aspectRatio(contentMode: .fit)
        }
        .offset(y: 15)
        .focusable(true)
        .digitalCrownRotation($scrollAmount, from: 0, through: 9, by: 1, sensitivity: .low, isContinuous: false, isHapticFeedbackEnabled: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
