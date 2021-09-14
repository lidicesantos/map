//
//  ArtWork.swift
//  mapa
//
//  Created by Lidice Santos on 14/09/21.
//

import Foundation
import MapKit

class ArtWork: NSObject, MKAnnotation {
    let title: String?
    let locationName: String?
    let type: String?
    var coordinate: CLLocationCoordinate2D
    
     init(title: String?, locationName: String?, type: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.type = type
        self.coordinate = coordinate
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
