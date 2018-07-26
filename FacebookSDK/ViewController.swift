

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController,FBSDKLoginButtonDelegate {
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let LoginBtn = FBSDKLoginButton(frame: CGRect(x: 15, y: 100, width: view.frame.width-30, height: 50))
        //LoginBtn.center = view.center
        self.view.addSubview(LoginBtn)
        LoginBtn.delegate = self
  
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!)
    {
        print("Facebook successfully Logged In")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!)
    {
        if error != nil
        {
            print(error)
            return
        }
        print("Facebook Successfully Logged Out")
    }
    
    

 

}

