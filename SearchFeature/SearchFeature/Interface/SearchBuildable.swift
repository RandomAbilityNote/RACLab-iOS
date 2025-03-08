import BaseFeature
import SwiftUI

@MainActor
public protocol SearchBuildable: Buildable {
  func build() -> AnyView
}
