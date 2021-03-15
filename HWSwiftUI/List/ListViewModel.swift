//
//  ListViewModel.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 13/03/21.
//

import SwiftUI

final class ListViewModel: ObservableObject {
    
    @Published var array = [
        Sport(name: "Run", isFave: true),
        Sport(name: "Bike", isFave: false),
        Sport(name: "Mountain bike", isFave: true),
        Sport(name: "Swimming", isFave: true),
        Sport(name: "Skiing", isFave: false)
    ]
}
