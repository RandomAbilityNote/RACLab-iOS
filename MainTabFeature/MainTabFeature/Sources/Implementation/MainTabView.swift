import SwiftUI
import DesignSystem

struct MainTabView: View {
  @State private var activatedTab: Tab = .search

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
    HStack(spacing: 60) {
      ForEach(tabs, id: \.index) { tab in
        TabBarItem(tab: tab, activatedTab: $activatedTab)
      }
    }
    .frame(maxWidth: .infinity)
    .background(.red)
  }
}

struct TabBarItem: View {
  private let tab: Tab
  @Binding var activatedTab: Tab

  init(tab: Tab, activatedTab: Binding<Tab>) {
    self.tab = tab
    self._activatedTab = activatedTab
  }

  var body: some View {
    VStack(spacing: 5) {
      Image(uiImage: tab == activatedTab ? tab.activatedImage : tab.deActivatedImage)
        .frame(width: 35, height: 35)
      Text(tab.title)
        .foregroundStyle(tab == activatedTab ? tab.activatedColor : Color.gray)
        .multilineTextAlignment(.center)
    }.onTapGesture {
      activatedTab = tab
    }
    .background(.blue)
  }
}

#Preview {
  MainTabView()
}
