import BaseFeature
import SwiftUI

@MainActor
public protocol MainTabBuildable: Buildable {
  func build() -> AnyView
}
