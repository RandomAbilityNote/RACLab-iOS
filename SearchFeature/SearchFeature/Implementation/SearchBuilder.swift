import BaseFeature
import SwiftUI

public final class SearchBuilder: Builder<SearchDependency>, SearchBuildable {
  public func build() -> AnyView {
    return AnyView(SearchView())
  }
}
