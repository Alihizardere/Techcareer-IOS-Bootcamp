//
//  ViewController.swift
//  LokasyonKullanimi
//
//  Created by alihizardere on 5.10.2023.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var labelEnlem: UILabel!
    @IBOutlet weak var labelBoylam: UILabel!
    @IBOutlet weak var labelHiz: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        //40.2215611,28.8674793
        /*let konum = CLLocationCoordinate2D(latitude: 40.2215611, longitude: 28.8674793)
        let zoom = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let bolge = MKCoordinateRegion(center: konum, span: zoom)
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Osmangazi"
        pin.subtitle = "Bursa"
        mapView.addAnnotation(pin)*/
    }
    

}

extension ViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let sonKonum = locations[locations.count-1]
        
        let enlem = sonKonum.coordinate.latitude
        let boylam = sonKonum.coordinate.longitude
        
        labelEnlem.text = "Enlem : \(enlem)"
        labelBoylam.text = "Boylam : \(boylam)"
        labelHiz.text = "Hız : \(sonKonum.speed)"
        
        
        //40.2215611,28.8674793
        let konum = CLLocationCoordinate2D(latitude: enlem, longitude: boylam)
        let zoom = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.1)
        let bolge = MKCoordinateRegion(center: konum, span: zoom)
        mapView.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Konum"
        pin.subtitle = "\(enlem)- \(boylam)"
        mapView.addAnnotation(pin)
        
        mapView.showsUserLocation = true
    }
}
