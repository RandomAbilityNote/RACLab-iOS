import Foundation
import SwiftUI

// MARK: - Swift Bundle Accessor for Frameworks
private class BundleFinder {}
extension Foundation.Bundle {
  /// Since DesignSystem is a dynamic framework, the bundle for classes within this module can be used directly.
  static let module = Bundle(for: BundleFinder.self)
}

extension Color {
  public enum ColorSystem {
    public static let hilightedGreen: Color = Color("HilightedGreen", bundle: .module)
    public static let hilightedPink: Color = Color("HilightedPink", bundle: .module)
    public static let beige: Color = Color("Beige", bundle: .module)
  }
}
