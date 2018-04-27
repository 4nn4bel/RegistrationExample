

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet var lab : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let s = UserDefaults.standard.object(forKey: "username") as? String {
            lab.text = "Welcome, \(s)"
        }
    }

}

