//
//  NavigationController.swift
//  VogueProjectinSwift
//
//  Created by Protek 2 on 10/14/15.
//  Copyright © 2015 Protek 2. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    var story:UIStoryboard=UIStoryboard(name: "Main", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
    //    let home:Home=Home()
        
//[self .presentViewController(home, animated: true, completion: nil)]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
