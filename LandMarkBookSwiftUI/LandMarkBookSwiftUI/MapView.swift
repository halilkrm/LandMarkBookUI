//
//  MapView.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable{ // UIKit görünümünü SwiftUI’da kullanmamızı sağlar
    
    var coordinate:CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
    }
    func makeUIView(context: Context) ->  MKMapView {
        MKMapView(frame: .zero)
    }
}

#Preview {
    MapView(coordinate:landmarkArray[0].locationCoordinate )
}
