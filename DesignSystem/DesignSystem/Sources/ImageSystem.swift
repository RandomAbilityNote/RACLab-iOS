import UIKit

extension UIImage {
  public enum ImageSystem {
    public enum TabBar {
      public static let activatedSearch = UIImage(
        named: "ActivatedSearch",
        in: .module, with: .none
      ) ?? UIImage()

      public static let deActivatedSearch = UIImage(
        named: "DeactivatedSearch",
        in: .module,
        with: .none
      ) ?? UIImage()

      public static let activatedCategory = UIImage(
        named: "ActivatedCategory",
        in: .module,
        with: .none
      ) ?? UIImage()

      public static let deActivatedCategory = UIImage(
        named: "DeactivatedCategory",
        in: .module,
        with: .none
      ) ?? UIImage()
    }
  }
}
