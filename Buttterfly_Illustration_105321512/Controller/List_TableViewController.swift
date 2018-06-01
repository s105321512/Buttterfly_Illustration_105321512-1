//
//  List_TableViewController.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/4/23.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit


//var butterfly_name = [""]
//var butterfly_image_name = [""]
//var cientific_name = [""]

var butterfly:[Butterfly] = [Butterfly(name: "", cientific: "", image: "", location: "", description: "", ecological: "")]

class List_TableViewController: UITableViewController {
    
    @IBOutlet weak var first_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .never
        //NSLog(buttonName);
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return butterfly.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! List_TableViewCell

        // Configure the cell...
        cell.butterfly_name.text = butterfly[indexPath.row].name
        cell.cientific_name.text = butterfly[indexPath.row].cientific
//        cell.location_name.text = butterfly[indexPath.row].location
        cell.thumbnailImageView.image = UIImage(named:butterfly[indexPath.row].image)
        return cell
    }
 
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showButterflyDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! butterfly_DetailViewController;
//                destinationController.butterflyImageName = butterfly_image_name[indexPath.row]
                destinationController.butterfly = butterfly[indexPath.row]
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //    @IBAction func first_button(_ sender: UIButton) {
    //        butterfly_name = ["大白裙弄蝶","埔里黃紋弄蝶","黑澤星弄蝶","褐弄蝶","墨子黃斑弄蝶"]
    //        butterfly_image_name = ["大白裙弄蝶.jpg","埔里黃紋弄蝶.jpg","黑澤星弄蝶.jpg","褐弄蝶.jpg","墨子黃斑弄蝶.jpg"]
    //    }
    //
    //    @IBAction func sec_button(_ sender: UIButton) {
    //        butterfly_name = ["水青粉蝶","星黃粉蝶","深山粉蝶","麻斑粉蝶","雲紋粉蝶"]
    //        butterfly_image_name = ["水青粉蝶.jpg","星黃粉蝶.jpg","深山粉蝶.jpg","麻斑粉蝶.jpg","雲紋粉蝶.jpg"]
    //    }
    //
    //    @IBAction func third_button(_ sender: UIButton) {
    //        butterfly_name = ["大琉璃紋鳳蝶","台灣烏鴉鳳蝶","白紋鳳蝶","青帶鳳蝶","青斑鳳蝶"]
    //        butterfly_image_name = ["大琉璃紋鳳蝶.jpg","台灣烏鴉鳳蝶.jpg","白紋鳳蝶.jpg","青帶鳳蝶.jpg","青斑鳳蝶.jpg"]
    //    }
    //
    //    @IBAction func fourthbutton(_ sender: UIButton) {
    //        butterfly_name = ["井上烏灰蝶","杉谷琉璃小灰蝶","嘉義小灰蝶","墨點小灰蝶","霧社黑燕蝶"]
    //        butterfly_image_name = ["井上烏灰蝶.jpg","杉谷琉璃小灰蝶.jpg","嘉義小灰蝶.jpg","墨點小灰蝶.jpg","霧社黑燕蝶.jpg"]
    //    }

}
