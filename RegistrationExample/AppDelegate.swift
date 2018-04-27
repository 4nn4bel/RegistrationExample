

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if let rvc = self.window?.rootViewController {
            if UserDefaults.standard.object(forKey: "username") as? String != nil {
                self.window!.rootViewController = rvc.storyboard!.instantiateViewController(withIdentifier: "root")
            }
        }
        return true
    }


}

