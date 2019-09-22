//
//  ContentView.swift
//  LearnToAnimateThePathOutlineOfA2DShape
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //Initial State of Animation
    @State var grow = false
    var body: some View {
        VStack {
            Text("Today 22 September 2019")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Divider()
            Spacer()
            ZStack {
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.blue, lineWidth: 20)
                    .frame(width: 300, height: 300)
                    .opacity(0.2)
                Circle()
                    .trim(from: grow ? 1/9 : 1, to: 1)
                    .stroke(Color.blue, lineWidth: 20)
                    .frame(width: 300, height: 300)
                    .rotationEffect(.degrees(90), anchor: .center)
                    .animation(Animation.easeIn(duration: 2.5).repeatForever(autoreverses: false).delay(2.5))
                    .onAppear() {
                        self.grow.toggle()
                }
                VStack {
                    Text("5.59 km")
                        .font(.body)
                        .fontWeight(.bold)
                    Text("Step: 9332")
                        .fontWeight(.semibold)
                    Text("Goal 1000")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
