//
//  MapView.swift
//  SwiftUI LandMark
//
//  Created by Pawan kumar Verma on 25/07/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region: MKCoordinateRegion =  MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  21.8380, longitude:  73.7191), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D)  {
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}



#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191))
}
