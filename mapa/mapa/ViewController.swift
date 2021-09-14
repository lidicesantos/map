//
//  ViewController.swift
//  mapa
//
//  Created by Lidice Santos on 14/09/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getLocale()
    }
    
    private func getLocale() {
        let inicialLocation = CLLocation(latitude: -23.56150875, longitude: -46.65596049)
        let masp = ArtWork(title: "Masp", locationName: "Museu de Arte Moderna de São Paulo", type: "Mudeu", coordinate: CLLocationCoordinate2D(latitude: -23.56150875, longitude: -46.65596049))
        mapView.centerLocation(inicialLocation)
        mapView.addAnnotation(masp)
    }
}

private extension MKMapView {
    func centerLocation(_ location: CLLocation, _ regionRadius: CLLocationDistance = 1000) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius,
                                                  longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
    }
}
