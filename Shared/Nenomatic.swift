//
//  Nanomatic.swift
//  Neomorphic
//
//  Created by Ali Aghamirbabaei on 2/5/21.
//

import SwiftUI

struct Nenomatic: View {
    
    @State var show = false
    @Namespace var nameSpace
    
    var body: some View {
        VStack {
            if !show {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .frame(width: 200, height: 90)
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                    .blur(radius: 4)
                                    .offset(x: -8, y: -8)
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.913697167, green: 0.9500085631, blue: 1, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                                    .padding(2)
                                    .blur(radius: 2)
                            }
                            .matchedGeometryEffect(id: "shape", in: nameSpace)
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                    
                    Text("Button")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "title", in: nameSpace)
                        .foregroundColor(Color(#colorLiteral(red: 0.1456444301, green: 0.1456444301, blue: 0.1456444301, alpha: 1)))
                }
                
            }else{
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .frame(width: 300, height: 300)
                            .position(x: 50, y: 60)
                            .background(
                                ZStack {
                                    Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                                        .foregroundColor(.white)
                                        .blur(radius: 4)
                                        .offset(x: -8, y: -8)
                                    
                                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.913697167, green: 0.9500085631, blue: 1, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                        .padding(2)
                                        .blur(radius: 2)
                                }
                                .matchedGeometryEffect(id: "shape", in: nameSpace)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                        
                        
                        Text("Button")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .matchedGeometryEffect(id: "title", in: nameSpace)
                            .padding(.bottom, 700)
                            .padding(.trailing, 300)
                            .foregroundColor(Color(#colorLiteral(red: 0.1456444301, green: 0.1456444301, blue: 0.1456444301, alpha: 1)))
                        
                        
                        VStack {
                            Progress(firstColor: .orange, secoundColor: .red, value: 0.49)
                                .padding(.bottom, 20)
                            Text("Your progress")
                                .font(.system(size: 20, weight: .light, design: .rounded))
                                .matchedGeometryEffect(id: "body", in: nameSpace)
                                .foregroundColor(Color(#colorLiteral(red: 0.1456444301, green: 0.1456444301, blue: 0.1456444301, alpha: 1)))
                        }
                    }
                    
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.25, dampingFraction:0.9)){
                show.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.913697167, green: 0.9500085631, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Nanomatic_Previews: PreviewProvider {
    static var previews: some View {
        Nenomatic()
    }
}
