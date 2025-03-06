import DesignSystem
import Firebase
import FirebaseAnalytics
import FirebaseCore
import FirebaseCrashlytics
import RootFeature
import SwiftUI
import UIKit

final class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct RACLabApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  private let appComponent = AppComponent()
    var body: some Scene {
        WindowGroup {
          appComponent
            .mainTabBuilder.build()
            .onAppear {
              DesignSystemFontFamily.registerAllCustomFonts()
            }
        }
    }
}
