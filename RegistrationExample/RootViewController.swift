

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet var lab : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let s = NSUserDefaults.standardUserDefaults().objectForKey("username") as? String {
            lab.text = "Welcome, \(s)"
        }
    }

}

