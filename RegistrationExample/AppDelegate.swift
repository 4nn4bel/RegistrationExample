

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let rvc = self.window?.rootViewController {
            let ud = UserDefaults.standard
            if ud.string(forKey: "username") != nil {
                print("app delegate: user has logged in")
                let vc = rvc.storyboard!.instantiateViewController(withIdentifier: "userHasLoggedIn")
                self.window!.rootViewController = vc
            }
        }
        return true
    }
}

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate, UISplitViewControllerDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let rvc = self.window?.rootViewController {
            let ud = UserDefaults.standard
            if ud.string(forKey: "username") != nil {
                print("scene delegate: user has logged in")
                let vc = rvc.storyboard!.instantiateViewController(withIdentifier: "userHasLoggedIn")
                self.window!.rootViewController = vc
            }
        }
    }
}

