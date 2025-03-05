import SwiftUI

extension Image {
  public enum ImageSystem {
    public enum TabBar {
      public static let activatedSearch = Image("ActivatedSearch", bundle: .module)
      public static let deActivatedSearch = Image("DeactivatedSearch", bundle: .module)
      public static let activatedCategory = Image("ActivatedCategory", bundle: .module)
      public static let deActivatedCategory = Image("DeactivatedCategory", bundle: .module)
    }
  }
}
