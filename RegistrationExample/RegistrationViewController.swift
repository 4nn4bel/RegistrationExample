

import UIKit

class RegistrationViewController: UIViewController {

    @IBAction func didExit(_ sender:UITextField) {
        if let s = sender.text, s.count > 5 {
            UserDefaults.standard.set(s, forKey: "username")
            self.performSegue(withIdentifier: "present", sender: self)
        }
    }
    
}
