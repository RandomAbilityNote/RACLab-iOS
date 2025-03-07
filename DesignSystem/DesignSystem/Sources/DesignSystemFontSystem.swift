import UIKit.UIFont
import SwiftUI

public struct DesignSystemFontConvertible: Sendable {
  public typealias Font = UIFont
  public let name: String
  public let family: String
  public let path: String

  fileprivate var url: URL? {
    return Bundle.module.url(forResource: path, withExtension: nil)
  }

  public func font(size: CGFloat) -> SwiftUI.Font {
    guard let font = Font(font: self, size: size) else {
      fatalError("Unable to initialize font '\(name)' (\(family))")
    }
    return SwiftUI.Font(font)
  }

  public func register() {
    guard let url = url else { return }
    /// 특정 URL에서 TTF(TrueType Font) 또는 OTF(OpenType Font) 폰트를 로드하여 시스템에 추가
    /// .process → 현재 실행 중인 앱에서만 사용 가능하게 등록
    /// persistent은 사용자가 폰트를 시스템에 영구적으로 등록
    CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
  }
}

public extension DesignSystemFontConvertible.Font {
  convenience init?(font: DesignSystemFontConvertible, size: CGFloat) {
    // 등록 되어 있지 않다면 등록
    if !UIFont.fontNames(forFamilyName: font.family).contains(font.name) {
      font.register()
    }
    self.init(name: font.name, size: size)
  }
}

public enum DesignSystemFontFamily: Sendable {
  public enum Pretendard: Sendable {
    public static let bold = DesignSystemFontConvertible(
      name: "Pretendard-Bold",
      family: "Pretendard",
      path: "Pretendard-Bold.otf"
    )
    public static let light = DesignSystemFontConvertible(
      name: "Pretendard-Light",
      family: "Pretendard",
      path: "Pretendard-Light.otf"
    )
    public static let medium = DesignSystemFontConvertible(
      name: "Pretendard-Medium",
      family: "Pretendard",
      path: "Pretendard-Medium.otf"
    )
    public static let regular = DesignSystemFontConvertible(
      name: "Pretendard-Regular",
      family: "Pretendard",
      path: "Pretendard-Regular.otf"
    )
    public static let all: [DesignSystemFontConvertible] = [bold, light, medium, regular]
  }
  public enum Galmuri11: Sendable {
    public static let regular = DesignSystemFontConvertible(
      name: "Galmuri11-Regular",
      family: "Galmuri11-Regular",
      path: "Galmuri11.ttf"
    )
    public static let bold = DesignSystemFontConvertible(
      name: "Galmuri11-Bold",
      family: "Galmuri11-Bold",
      path: "Galmuri11-Bold.ttf"
    )
    public static let all: [DesignSystemFontConvertible] = [regular, bold]
  }
  public static let allCustomFonts: [DesignSystemFontConvertible] = [
    Pretendard.all, Galmuri11.all
  ].flatMap { $0 }
}

