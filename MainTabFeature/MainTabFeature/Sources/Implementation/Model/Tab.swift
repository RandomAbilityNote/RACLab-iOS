import DesignSystem
import SwiftUI

enum Tab: Hashable {
  case search
  case category

  var index: Int {
    switch self {
    case .search:
      return 0
    case .category:
      return 1
    }
  }

  var title: String {
    switch self {
    case .search:
      return "검색"
    case .category:
      return "카테고리"
    }
  }

  var activatedColor: Color {
    switch self {
    case .search:
      return Color.ColorSystem.hilightedGreen
    case .category:
      return Color.ColorSystem.hilightedPink
    }
  }

  var activatedImage: UIImage {
    switch self {
    case .search:
      return .ImageSystem.TabBar.activatedSearch
    case .category:
      return .ImageSystem.TabBar.activatedCategory
    }
  }

  var deActivatedImage: UIImage {
    switch self {
    case .search:
      return .ImageSystem.TabBar.deActivatedSearch
    case .category:
      return .ImageSystem.TabBar.deActivatedCategory
    }
  }
}
