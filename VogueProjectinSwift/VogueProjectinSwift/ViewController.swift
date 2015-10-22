//
//  ViewController.swift
//  VogueProjectinSwift
//
//  Created by Protek 2 on 10/13/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

import UIKit
import LocalAuthentication
//import ViewtwoController

class ViewController: UIViewController {
    var context=LAContext();
    var error:NSError?;
    
    @IBOutlet weak var TouchScreen: UIImageView!
    
    @IBOutlet weak var Login: UIButton!
    
    @IBAction func Login(sender: UIButton) {
//        dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_USER_INITIATED.rawValue), 0), {
//            
//        })
        TouchScreen.hidden=false
        //TouchScreen.backgroundColor=UIColor.greenColor()
        //Login.hidden=true
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error:&error)
        {
            context.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Device Authorization", reply: {(success:Bool, error:NSError?) -> Void in
            
           if success
           {
            
            print("Access Granted")
            dispatch_async(dispatch_get_main_queue(),{
                self.TouchScreen.hidden=true
                //let home:Home=Home()
                let nav:NavigationController=NavigationController()
            [self .presentViewController(nav, animated: true, completion: nil)]
                //[self .presentViewController (home, animated: true,completion:nil)]
            })
           }
           else
           {
            print("Invalid Owner")
            if let possibleerror=error
            {
            print(possibleerror.localizedDescription)
            dispatch_async(dispatch_get_main_queue(),{
            self.TouchScreen.hidden=true
            //[self.view .sendSubviewToBack(self.TouchScreen)]
                })
            }
           
           }
                })
        }
}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TouchScreen.hidden=true
        TouchScreen.backgroundColor=UIColor.greenColor()
        TouchScreen.image=UIImage(named:"TouchScreen.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

