//
//  FilterView.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 13/03/21.
//

import SwiftUI


struct FilterView: View {
    
    @Binding var favoriteShowed: Bool
    
    var body: some View {
        Toggle(isOn: $favoriteShowed) {
            Text("Favorite")
        }
    }
}


