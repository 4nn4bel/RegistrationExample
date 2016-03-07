

import UIKit

class RegistrationViewController: UIViewController {

    @IBAction func didExit(sender:UITextField) {
        if let s = sender.text where s.characters.count > 5 {
            NSUserDefaults.standardUserDefaults().setObject(s, forKey: "username")
            self.performSegueWithIdentifier("present", sender: self)
        }
    }
    
}
