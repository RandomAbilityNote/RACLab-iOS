import SwiftUI
import BaseFeature

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
          let bcccc = BaseFeatureTest()
          bcccc.run()
        }
    }
}

#Preview {
    ContentView()
}
