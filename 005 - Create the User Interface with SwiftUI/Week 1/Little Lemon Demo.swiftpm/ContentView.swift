import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Little Lemon")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}
