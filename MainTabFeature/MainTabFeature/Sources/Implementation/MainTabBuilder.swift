import BaseFeature
import SwiftUI

public final class MainTabBuilder: Builder<MainTabDependency>, MainTabBuildable {
  public func build() -> AnyView {
    return AnyView(MainTabView())
  }
}
