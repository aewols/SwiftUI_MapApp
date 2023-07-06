//
//  LocationsViewModel.swift
//  SwiftUIMapApp
//
//  Created by 이연정 on 2023/07/06.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
