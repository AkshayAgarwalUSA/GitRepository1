//
//  TableViewController.swift
//  SwiftCode
//
//  Created by Protek 2 on 8/11/15.
//  Copyright (c) 2015 Protek 2. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let array=[["name":"mercury","image":"mercury.jpeg"],["name":"venus","image":"venus.jpeg"],["name":"earth","image":"earth.jpeg"],["name":"mars","image":"mars.jpeg"],["name":"jupitor","image":"jupitor.jpeg"],["name":"sa","image":"saturn.png"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("\(array[0])")
        //NSLog("%@",array[0]["image"]!)
        //var str=array[0]["image"]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 6;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        cell.textLabel?.text="\(indexPath.row)";
        if(indexPath.row==0)
        {
            cell.backgroundColor=UIColor.redColor();
        }
//        let image=UIImage(named:"earth.jpeg");
//        var str=array[0]["image"]
//        cell.imageView?.image=UIImage(named: str!)
        //var imagepicker=UIImagePickerController()
        //imagepicker.allowsEditing = false
        //imagepicker.sourceType = .PhotoLibrary
        //presentViewController(imagepicker, animated: true, completion: nil)
        let url=NSURL(string: "http://api.openweathermap.org/data/2.5/weather?zip=94040,us")!
        let urlrequest=NSURLRequest(URL: url)
        NSURLConnection.sendAsynchronousRequest(urlrequest, queue: NSOperationQueue(),completionHandler: { (response:NSURLResponse!, data:NSData!,error:NSError!) -> Void in
            var error: AutoreleasingUnsafeMutablePointer<NSError?> = nil
            let jsonResult: NSDictionary! = NSJSONSerialization.JSONObjectWithData(data, options:NSJSONReadingOptions.MutableContainers, error: error) as? NSDictionary
            
            if (jsonResult != nil) {
                var str=jsonResult["weather"] as! NSArray
                var str1=str[0] as! NSDictionary
                var str2: AnyObject?=str1["description"]
                NSLog("%@","\(str2!)")
                var i=indexPath.row
                var name1=self.array[i]["name"]
                cell.textLabel?.text="\(name1!)"
                var image=self.array[i]["image"]
                cell.imageView?.image=UIImage(named:image!)
            } else {
                // couldn't load JSON, look at error
            }           // println("The title is: %@",post["description"])
        })
        //NSLog("%@", url)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
