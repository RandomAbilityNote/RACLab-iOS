import SwiftUI

public extension Font {
  static func pretendard(size: CGFloat, weight: DesignSystemFontFamily.Pretendard.Family) -> Self {
    switch weight {
    case .bold:
      return DesignSystemFontFamily.Pretendard.bold.font(size: size)
    case .light:
      return DesignSystemFontFamily.Pretendard.light.font(size: size)
    case .medium:
      return DesignSystemFontFamily.Pretendard.medium.font(size: size)
    case .regular:
      return DesignSystemFontFamily.Pretendard.regular.font(size: size)
    }
  }

  static func galmuri(size: CGFloat, weight: DesignSystemFontFamily.Galmuri11.Family) -> Self {
    switch weight {
    case .bold:
      return DesignSystemFontFamily.Galmuri11.bold.font(size: size)
    case .regular:
      return DesignSystemFontFamily.Galmuri11.regular.font(size: size)
    }
  }
}
