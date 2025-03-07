import SwiftUI
import BaseFeature

struct ContentView: View {
    var body: some View {
        VStack {
          Button {
            let numbers = [0]
            _ = numbers[1]
          } label: {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
          }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
