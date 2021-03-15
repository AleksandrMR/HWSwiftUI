//
//  Router.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 14/03/21.
//

import Foundation
import Combine
import SwiftUI

final class Router: ObservableObject {
    
    @Published var selection: Int = 0
    @Published var isRunShowed: Bool = false
}
