import Foundation
import MainTabFeature

public typealias Dependencies
= MainTabDependency

public final class AppComponent: Dependencies {
  public lazy var mainTabBuilder: MainTabBuildable = MainTabBuilder(dependency: self)

  public init() {}
}
