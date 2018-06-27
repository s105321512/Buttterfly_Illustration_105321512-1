//
//  ButterflyDetailMapCell.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/6/24.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit
import MapKit

class ButterflyDetailMapCell: UITableViewCell {
    
    @IBOutlet var mapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    func configure(Lat: [Any?], Lon: [Any?], Coordinates: Int){
        for number in 0...Coordinates{
//            let Lat = Lat[number]
//            let Lat_Stirng = Lat as! String
//            let Lat_double = Double("\(Lat_Stirng)")
//            print("Lat double after:\(Lat_double)")
//            let Lon = Lon[number]
//            let Lon_Stirng = Lon as! String
//            let Lon_double = Double("\(Lon_Stirng)")
//            print("Lon double after:\(Lon_double)")
            let Lat1 = Double("23.98077")
            let Lon1 = Double("120.95655")
            addPointAnnotation(latitude: Lat1!, longitude: Lon1!)}
//            Location_data = [Location_data(lat: Lat_String, lon: Lon_String)]
        }
    
    
    private func addPointAnnotation(latitude:Double, longitude:Double){
        let point:MKPointAnnotation = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: latitude , longitude: longitude )
        mapView.addAnnotation(point);
    }
        
//        let geoCoder = CLGeocoder()
        
//        print(location)
//        geoCoder.geocodeAddressString(location, completionHandler: {placemarks, error in
//            if let error = error{
//                print("Geocoder error: \(error.localizedDescription)")
//                return
//            }
//
//            if let placemarks = placemarks{
//                let placemark = placemarks[0]
//
//                let annotation = MKPointAnnotation()
//
//                if let location = placemark.location{
//                    annotation.coordinate = location.coordinate
//                    self.mapView.addAnnotation(annotation)
//
//                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
//                    self.mapView.setRegion(region, animated: false)
//                }
//            }
//        })
//    }
}
