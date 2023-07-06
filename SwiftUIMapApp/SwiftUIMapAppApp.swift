//
//  SwiftUIMapAppApp.swift
//  SwiftUIMapApp
//
//  Created by 이연정 on 2023/07/06.
//

import SwiftUI

@main
struct SwiftUIMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()      // 앱이 시작될 때 해당 개체를 초기화
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)      // 해당 뷰의 자식들은 해당 데이터를 참조 (LocationsViewModel을 다른 뷰에서도 활용 가능)
        }
    }
}
