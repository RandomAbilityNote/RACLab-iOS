import DesignSystem
import SwiftUI
import Util

struct MainTabView: View {
  @State private var activatedTab: Tab = .search

  private let tabs: [Tab] = [.search, .category]

  var body: some View {
    VStack(spacing: .zero) {
      TabView {
        Text("Search")
          .tag(Tab.search)
          .background(.green)
        Text("Category")
          .tag(Tab.category)
      }
      MainTabBar()
    }
  }

  @ViewBuilder
  private func MainTabBar() -> some View {
    HStack(spacing: 0) {
      Group {
        Spacer()
        TabBarItem(tab: .search, activatedTab: $activatedTab)
        Spacer()
        TabBarItem(tab: .category, activatedTab: $activatedTab)
        Spacer()
      }
      .offset(y: 20)
    }
    .frame(maxWidth: .infinity)
    .background(LinearGradient(stops: [
      .init(color: Color(hex: 0x11152D), location: 0.3),
      .init(color: Color(hex: 0x0E0E0E), location: 1)
  ], startPoint: .top, endPoint: .bottom))
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
        .resizable()
        .scaledToFit()
        .frame(width: 40, height: 40)
      Text(tab.title)
        .foregroundStyle(tab == activatedTab ? tab.activatedColor : Color.gray)
    }
    .padding(.top, 5)
    .contentShape(Rectangle())
    .onTapGesture {
      activatedTab = tab
    }

  }
}

#Preview {
  MainTabView()
}
