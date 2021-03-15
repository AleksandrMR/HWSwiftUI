//
//  ListDataModel.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 13/03/21.
//

import SwiftUI

struct Sport {
    let name: String
    let isFave: Bool
}

//MARK: - Identifiable
extension Sport: Identifiable {
    var id: String {
        name
    }
}
