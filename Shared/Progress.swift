//
//  Progress.swift
//  Neomorphic
//
//  Created by Ali Aghamirbabaei on 2/6/21.
//

import SwiftUI

struct Progress: View {
    
    @State var show = false
    var firstColor:Color
    var secoundColor:Color
    var value:CGFloat
    private let gradientColor = AngularGradient(
        gradient: Gradient(colors: [Color.red, Color.orange]),
        center: .center,
        startAngle: .degrees(0),
        endAngle: .degrees(360)
    )
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(firstColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 100, height: 100)
                .opacity(0.2)
                .blur(radius: 1.5)
                
            
            Circle()
                .trim(from: show ? 0.1: value, to: 0.98)
                .stroke(gradientColor, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(
                    Angle(degrees: 180),
                    axis: (x: 0.1, y: 0.0, z: 0.0)
                )
                .frame(width: 100, height: 100)
                .animation(.easeOut)
                .blur(radius: 0.5)
                .shadow(color: firstColor, radius: 8)
                .onTapGesture {
                    self.show.toggle()
            }

        }
    }
}

struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress(firstColor: .orange, secoundColor: .red, value: 0.5)
    }
}
