//
//  Location.swift
//  SwiftUIMapApp
//
//  Created by 이연정 on 2023/07/06.
//

import Foundation
import MapKit

struct Location: Identifiable {
    // let id = UUID().uuidString  // 임의의 문자열을 생성하고 이 위치에 대한 ID로 제공 > 두개의 Location이 동일한 경우에도 ID값이 다르기 때문에 다른 개체로 인식 가능
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // Identifiable
    var id: String {
        name + cityName     // 이름은 같지만 도시가 다른 두 위치가 있는 경우 구별 가능
    }
}

