import Foundation
import MainTabFeature
import SearchFeature

public typealias Dependencies
= MainTabDependency
& SearchDependency

public final class AppComponent: Dependencies {
  public lazy var mainTabBuilder: MainTabBuildable = MainTabBuilder(dependency: self)
  public lazy var searchBuilder: SearchBuildable = SearchBuilder(dependency: self)

  public init() {}
}
