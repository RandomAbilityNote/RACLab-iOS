import SwiftUI

public extension Color {
  enum ColorSystem {
    enum Gray {
      public static let gray1: Color = Color("Gray1", bundle: .module)
      public static let gray2: Color = Color("Gray2", bundle: .module)
      public static let gray3: Color = Color("Gray3", bundle: .module)
      public static let gray4: Color = Color("Gray4", bundle: .module)
    }
    public static let hilightedGreen: Color = Color("HilightedGreen", bundle: .module)
    public static let hilightedPink: Color = Color("HilightedPink", bundle: .module)
    public static let beige: Color = Color("Beige", bundle: .module)
  }
}
