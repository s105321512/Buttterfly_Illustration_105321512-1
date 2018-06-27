//
//  MapViewController.swift
//  Buttterfly_Illustration_105321512
//
//  Created by VipLab NCNU on 2018/6/24.
//  Copyright © 2018年 VipLab NCNU. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    var butterfly = Butterfly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func addPointAnnotation(latitude:Double, longitude:Double){
        let point:MKPointAnnotation = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: latitude , longitude: longitude )
        mapView.addAnnotation(point);
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

//override func viewDidLoad() {
//    super.viewDidLoad()
//
//    let geoCoder = CLGeocoder()
//
//    print(butterfly.location)
//    geoCoder.geocodeAddressString(butterfly.location, completionHandler:
//        {placemarks, error in
//            if let error = error {
//                print("Geocoder error: \(error.localizedDescription)")
//                return
//            }
//            if let placemarks = placemarks{
//                let placemark = placemarks[0]
//
//                let annotation = MKPointAnnotation()
//                annotation.title = self.butterfly.name
//                annotation.subtitle = self.butterfly.cientific
//
//                if let location = placemark.location{
//                    annotation.coordinate = location.coordinate
//                    self.mapView.showAnnotations([annotation], animated: true)
//                    self.mapView.selectAnnotation(annotation, animated: true)
//                }
//            }
//    })
//    // Do any additional setup after loading the view.
//}

