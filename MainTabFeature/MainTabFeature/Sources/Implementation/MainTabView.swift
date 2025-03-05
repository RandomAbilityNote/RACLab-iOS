import SwiftUI
import DesignSystem

struct MainTabView: View {
  enum Tab: Hashable {
    case search
    case category
  }

  @State var tab: Tab = .search

  var body: some View {
    TabView {
      Text("Search")
        .tag(Tab.search)
      Text("Category")
        .tag(Tab.category)
    }
  }
}

#Preview {
    MainTabView()
}
