//
//  ViewController.swift
//  SwiftCode2
//
//  Created by Protek 2 on 8/27/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var str2:NSData!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
        self.image.backgroundColor=UIColor.redColor()
        var str=UIImage(named: "mercury.png")
        self.image1.image=str
        self.label.text="hi"
        var url=NSURL(string: "http://www.joomlaworks.net/images/demos/galleries/abstract/7.jpg")
        var data=NSData(contentsOfURL: url!)
        self.image.image=UIImage(data: data!)
        var url1=NSURL(string: "http://pugme.herokuapp.com/bomb?count=50")
        var data1=NSData(contentsOfURL: url1!)
        var urlrequest=NSURLRequest(URL: url1!)
        NSURLConnection.sendAsynchronousRequest(urlrequest, queue: NSOperationQueue(), completionHandler: {(response:NSURLResponse!,data1:NSData!,error:NSError!)->Void in
            var error:AutoreleasingUnsafeMutablePointer<NSError?> = nil
            let jsonResult: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data1, options:NSJSONReadingOptions.MutableContainers, error: error) as? NSDictionary
                if (jsonResult != nil) {
                var str=jsonResult["pugs"] as! NSArray
                NSLog("%@","\(str)")
                var str1: AnyObject?=str[0]
                NSLog("%@","\(str1!)")
                var url2=NSURL(string: str1! as! String)
                var data2=NSData(contentsOfURL: url2!)
                self.image2.backgroundColor=UIColor.redColor()
                    self.str2=data2!
        //self.image2.image=UIImage(data: data2!)
            }
        })
        self.image2.image=UIImage(data: str2!)
        //var jsonData:NSDictionary=
        //self.image2.image=UIImage(data: data1!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

