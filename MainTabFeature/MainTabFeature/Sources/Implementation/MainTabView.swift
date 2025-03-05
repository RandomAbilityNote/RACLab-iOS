import SwiftUI
import DesignSystem

struct MainTabView: View {
  @State private var tab: Tab = .search

  private let tabs: [Tab] = [.search, .category]

  var body: some View {
    VStack(spacing: .zero) {
      TabView {
        Text("Search")
          .tag(Tab.search)
        Text("Category")
          .tag(Tab.category)
      }
      mainTabBar()
    }
  }

  @ViewBuilder
  func mainTabBar() -> some View {
    HStack(spacing: .zero) {
      ForEach(tabs, id: \.index) { tab in
        Text(tab.title)
        TabBarItem(tab: tab)
      }
    }
  }
}

struct TabBarItem: View {
  let tab: Tab
  var body: some View {
    tab.activatedImage
  }
}

#Preview {
  MainTabView()
}
