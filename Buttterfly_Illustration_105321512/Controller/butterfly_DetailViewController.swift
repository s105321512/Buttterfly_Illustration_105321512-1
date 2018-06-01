//
//  butterfly_ViewController.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/4/25.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit

class butterfly_DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetaillconTextCell.self), for: indexPath) as! ButterflyDetaillconTextCell
            cell.iconImageView.image = UIImage(named: "eat_icon.png")
            cell.shortTextLabel.text = butterfly.ecological
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetaillconTextCell.self), for: indexPath) as! ButterflyDetaillconTextCell
            cell.iconImageView.image = UIImage(named: "flower_icon.png")
            cell.shortTextLabel.text = butterfly.location
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:ButterflyDetailTextCell.self), for: indexPath) as! ButterflyDetailTextCell
            cell.descriptionLabel.text = butterfly.description
            return cell
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    

//    @IBOutlet var butterflyImageView: UIImageView!
//    var butterflyImageName = ""

    @IBOutlet var headerView: ButterflyDetailHeaderView!
    var butterfly: Butterfly = Butterfly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        butterflyImageView.image = UIImage(named: butterfly.image)
        // Do any additional setup after loading the view.
        headerView.headerImageView.image = UIImage(named: butterfly.image)
        headerView.nameLabel.text = butterfly.name
        headerView.cientificLabel.text = butterfly.cientific
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
