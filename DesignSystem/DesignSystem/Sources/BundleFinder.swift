import Foundation

class BundleFinder {}
extension Foundation.Bundle {
  static let module = Bundle(for: BundleFinder.self)
}
