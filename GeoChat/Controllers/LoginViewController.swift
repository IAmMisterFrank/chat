
import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    self.errorLabel.text = err.localizedDescription
                } else if let result = authResult {
                    print("Login succesful: \(result)")
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                Timer.scheduledTimer(withTimeInterval: 4.0 , repeats: false) { (timer) in
                    self.errorLabel.text = ""
                }
            }
        }
    }
    
}
