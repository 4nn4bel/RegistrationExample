

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        if let rvc = self.window?.rootViewController {
            if NSUserDefaults.standardUserDefaults().objectForKey("username") as? String != nil {
                self.window!.rootViewController = rvc.storyboard!.instantiateViewControllerWithIdentifier("root")
            }
        }
        return true
    }


}

