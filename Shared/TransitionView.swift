//
//  TransationView.swift
//  Neomorphic
//
//  Created by Ali Aghamirbabaei on 2/5/21.
//

import SwiftUI

struct TransitionView: View {
    
    @State var show = false
    @Namespace var nameSpace
    
    var body: some View {
        VStack{
            if !show {
                //View before transation
                ScrollView {
                    HStack {
                        VStack{
                            Text("Title")
                                .foregroundColor(.white)
                                .matchedGeometryEffect(id: "title", in: nameSpace)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            Rectangle()
                                .matchedGeometryEffect(id: "shape", in: nameSpace)
                                .cornerRadius(5)
                            
                        )
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .cornerRadius(5)
                        Spacer()
                    }
                }
            }else{
                //View after transation
                VStack{
                    HStack {
                        Text("Title")
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "title", in: nameSpace)
                        Spacer()
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .background(
                    Rectangle()
                        .matchedGeometryEffect(id: "shape", in: nameSpace)
                )
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.25, dampingFraction:0.9)){
                show.toggle()
            }
        }
        .padding(5)
    }
}

struct TransationView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
