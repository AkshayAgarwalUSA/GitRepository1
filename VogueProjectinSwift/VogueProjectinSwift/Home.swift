//
//  Home.swift
//  VogueProjectinSwift
//
//  Created by Protek 2 on 10/14/15.
//  Copyright © 2015 Protek 2. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    var story:UIStoryboard=UIStoryboard(name: "Main.storyboard", bundle: nil)
var button:UIButton=UIButton()
  var rect:CGRect=CGRect()
    let shop:Shop=Shop()

    @IBAction func ShopButton(sender: AnyObject) {
        
        
[self .presentViewController(shop, animated: true, completion: nil)]
    }
    
    
    // var view:CGRectMake:CGRectMake()
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor=UIColor.redColor()
        rect=CGRectMake(0, 0, 100, 100)
        button.frame=rect
        [self.view .addSubview(button)]
        button.backgroundColor=UIColor.greenColor()
        button.titleLabel?.text="Button"
//        [self .presentViewController(shop, animated: true, completion: nil)]
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
