//
//  ViewController.swift
//  MapViewBasic
//
//  Created by Appinventiv Technologies on 04/10/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    //  MARK:- OUTLET'S..
    
    @IBOutlet weak var mapView: MKMapView!
    
    //  MARK:- ViewDidLoad...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.mapType = MKMapType.satellite
        
        let appInventiv = CLLocationCoordinate2D(latitude: 28.6296981,
                                                 longitude: 77.37629960000004)
        let forties = CLLocationCoordinate2D(latitude: 28.6184089,
                                             longitude: 77.37259470000004)
        
        let span = MKCoordinateSpanMake(0, 0)
        let region = MKCoordinateRegion(center: appInventiv, span: span)
        mapView.setRegion(region, animated: true)
        
        let appIventivAnnotation = MKPointAnnotation()
        appIventivAnnotation.coordinate = appInventiv
        appIventivAnnotation.title = "AppInventiv"
        appIventivAnnotation.subtitle = "Noida"
        mapView.addAnnotation(appIventivAnnotation)
        
        let regionForties = MKCoordinateRegion(center: forties, span: span)
        mapView.setRegion(regionForties, animated: true)
        let fortiesAnnotation = MKPointAnnotation()
        fortiesAnnotation.coordinate = forties
        fortiesAnnotation.title = "Forties"
        fortiesAnnotation.subtitle = "Noida"
        mapView.addAnnotation(fortiesAnnotation)
    }
    
    
    @IBAction func currentLocationButton(_ sender: UIButton) {
        
        guard let currentScene = self.storyboard?.instantiateViewController(withIdentifier: "CurrentLocationVcId") as? CurrentLocationVc else{
            
            return
            
        }
        self.navigationController?.pushViewController(currentScene, animated: true)
        
    }
    
}

