import UIKit

public extension UIImage {
  private convenience init?(_ name: String) {
    self.init(named: name, in: .module, with: .none)
  }

  enum ImageSystem {
    public enum TabBar {
      public static let activatedSearch = UIImage("ActivatedSearch") ?? UIImage()
      public static let deActivatedSearch = UIImage("DeactivatedSearch") ?? UIImage()
      public static let activatedCategory = UIImage("ActivatedCategory") ?? UIImage()
      public static let deActivatedCategory = UIImage("DeactivatedCategory") ?? UIImage()
    }

    public enum TribeCard {
      public static let zerg = UIImage("Zerg") ?? UIImage()
      public static let terran = UIImage("Terran") ?? UIImage()
      public static let protoss = UIImage("Protoss") ?? UIImage()
    }
  }
}
