

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if let rvc = self.window?.rootViewController {
            
            let ud = UserDefaults.standard
            if ud.string(forKey: "username") != nil {
                let vc = rvc.storyboard!.instantiateViewController(withIdentifier: "userHasLoggedIn")
                self.window!.rootViewController = vc
            }
        }
        return true
    }


}

