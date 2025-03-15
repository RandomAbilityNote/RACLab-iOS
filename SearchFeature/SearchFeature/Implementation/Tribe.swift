import DesignSystem
import UIKit

enum Tribe: String, Identifiable, CaseIterable {
  var id: String {
    return rawValue
  }

  case zerg = "저그"
  case terran = "테란"
  case protoss = "프로토스"

  var engName: String {
      switch self {
      case .zerg:
        return "Zerg"
      case .terran:
        return "Terran"
      case .protoss:
        return "Protoss"
      }
    }

  var cardImage: UIImage {
    switch self {
    case .zerg:
      return .ImageSystem.TribeCard.zerg
    case .terran:
      return .ImageSystem.TribeCard.terran
    case .protoss:
      return .ImageSystem.TribeCard.protoss
    }
  }
}
