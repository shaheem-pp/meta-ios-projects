//
//  SliderView.swift
//  Stacks
//
//  Created by Shaheem PP on 29/11/23.
//

import SwiftUI

struct SliderView: View {
    
    @State private var size: CGFloat = 0.1
    
    var body: some View {
        VStack {
            Text("Little Lemon").font(.system(size: size * 50))
            Slider(value: $size)
            
        }
        .padding()
    }
}

#Preview {
    SliderView()
}
