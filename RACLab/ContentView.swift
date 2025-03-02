import SwiftUI
import BaseFeature
import Util

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
          print(APP_VERSION())
        }
    }
}

#Preview {
    ContentView()
}
