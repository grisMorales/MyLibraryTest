//
//  MapView.swift
//  myApp
//
//  Created by Griselda Juarez Morales on 06/07/22.
//

import SwiftUI
import MapKit

public struct MapView: UIViewRepresentable {
    
    public init() {}
    
    public func makeUIView(context: Context)->
        MKMapView {
            MKMapView(frame: .zero)
    }
    
    public func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate =
        CLLocationCoordinate2D(
            latitude: 40.4380638, longitude: -3.7495762)
        
        let span =
        MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        
        let region =
            MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        MapView()
    }
}
