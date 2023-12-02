//
//  ImageContentView.swift
//  View Heirarchy
//
//  Created by Shaheem PP on 02/12/23.
//

import SwiftUI

struct ImageContentView: View {
    @Binding var showLogo : Bool
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 210, height: 210)
                    .clipShape(.circle)
                Image("applepark")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFill()
                    .clipShape(.circle)
            }
            if showLogo == true{
                Text("Apple Park")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                Text("Cupertino, CA, USA")
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    ImageContentView(showLogo: .constant(true))
}
