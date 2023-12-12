//
//  ImageView.swift
//  Little Lemon Demo
//
//  Created by Shaheem PP on 08/11/23.
//

import SwiftUI
import URLImage

struct ImageView: View {
    
    let imageURLString = "https://pngimg.com/d/lemon_PNG25201.png"
    
    var body: some View {
        VStack{
            URLImage(url: URL(string: imageURLString)!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    ImageView()
}
