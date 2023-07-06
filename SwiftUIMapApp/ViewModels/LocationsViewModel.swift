//
//  LocationsViewModel.swift
//  SwiftUIMapApp
//
//  Created by 이연정 on 2023/07/06.
//

import Foundation
import MapKit

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        // 지도 위치만 자동으로 업데이트하는 것
        didSet {    // (값이 변할때) 새 값이 저장된 직 후에 호출됨
            updateMapRegion(location: mapLocation)      // 지도 위치 값을 설정하면 자동으로 updateMapRegion 함수를 호출하여 현재 지역을 업데이트
        }
    }
    
    // 초기값을 제공하기 전에 빈 영역으로 시작한 다음 지도 위치를 초기화한 후에 현재 지도 영역을 업데이트할 것
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        //withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan
            )
        //}
    }
    
}
