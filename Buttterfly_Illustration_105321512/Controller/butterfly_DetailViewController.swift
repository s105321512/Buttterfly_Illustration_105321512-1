//
//  butterfly_ViewController.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/4/25.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit

var Latitude = [Any?]()
var Longitude = [Any?]()
var Coordinates = Int()

class butterfly_DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, URLSessionDataDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
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
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailSeparatorCell.self), for: indexPath) as! ButterflyDetailSeparatorCell
            cell.titleLabel.text = " How To Get Here"
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ButterflyDetailMapCell.self), for: indexPath) as! ButterflyDetailMapCell
            if Coordinates == 0{
                print ("--------no data--------")
            }else{
                cell.configure(Lat: [Latitude], Lon: [Longitude], Coordinates: Coordinates)
            }
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
    
    override func prepare(for segue: UIStoryboardSegue, sender senfer: Any?) {
        let butterflyname = butterfly.name
        find_coordinate(name: butterflyname)
        if segue.identifier == "showMap" {
            let destinaationController = segue.destination as! MapViewController
            destinaationController.butterfly = butterfly
        }
    }
    
        func find_coordinate(name: String){
            var urlComponents: URLComponents = URLComponents(string: "https://www.tbn.org.tw")!
            urlComponents.path = "/api/v1/occurrence"
            urlComponents.queryItems = [URLQueryItem(name: "scientifiName", value: name)]
            let butterflyURL = urlComponents.url!
            print(butterflyURL)
    
            let config = URLSessionConfiguration.default
            let session: URLSession = URLSession(configuration: config, delegate: self, delegateQueue: nil)
            session.dataTask(with: butterflyURL, completionHandler: {(data, urlResponse, error) in
                if let data = data,
                    let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]{
                    if let count = json!["count"] as? Int   {
                        print("count=\(count)")
                    }
                    if let results = json!["results"] as? [AnyObject]{
                        for result in results{
                            if let latitude = result["decimalLatitude"]{
                                Latitude.append(latitude)
                                print("lat = \(latitude!)")
                            }
                            if let longitude = result["decimalLongitude"]{
                                Longitude.append(longitude)
                                print("lon = \(longitude!)")
                            }
                        }
                    }
                }
            }).resume()
            Coordinates = Latitude.count
//            print("How many: \(Coordinates)\n,Lat_array: \(Latitude)\n, Lon_array: \(Longitude)")
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
