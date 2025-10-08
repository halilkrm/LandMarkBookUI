//
//  LandmarkModel.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI
import CoreLocation

struct Landmark: Identifiable{
    
    var id:Int
    var name:String
    var imageName:String
    var country:String
    var category:String
    var coordinate: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
}

struct Coordinates{
    var latitude:Double
    var longitude:Double
}

let eiffelLandmark = Landmark(id: 0, name: "Eiffel", imageName:"eiffel" , country: "France", category: "Tower", coordinate: Coordinates(latitude:48.858644 , longitude: 2.294487))

let collesumLandmark = Landmark(id: 1, name: "Colleseum", imageName:"collesium" , country: "Italy", category: "Historic Area", coordinate: Coordinates(latitude:41.8902102 , longitude: 12.4922308967253))

let londonBridgeLandmark = Landmark(id: 2, name: "London Bridge", imageName:"london bridge" , country: "England", category: "Bridge", coordinate: Coordinates(latitude:51.508005 , longitude: -0.087674))

let pisaLandmark = Landmark(id: 3, name: "Pisa", imageName:"pisatower" , country: "Italy", category: "Tower", coordinate: Coordinates(latitude:43.723053 , longitude: 10.396522))

let sydneyLandmark = Landmark(id: 4, name: "Sydney Opera House", imageName:"sydney" , country: "Australia", category: "Opera House", coordinate: Coordinates(latitude:-33.856571 , longitude: 151.215318))


let landmarkArray = [eiffelLandmark,collesumLandmark,londonBridgeLandmark,pisaLandmark,sydneyLandmark]

