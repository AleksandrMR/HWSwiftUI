//
//  ListView.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 09/03/21.
//

import SwiftUI

struct ListScreen: View {
    
    @EnvironmentObject var viewModel: ListViewModel
    @EnvironmentObject var router: Router
    
    @State var favoriteShowed: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                FilterView(favoriteShowed: $favoriteShowed)
                ForEach(viewModel.array) { item in
                    if !favoriteShowed || item.isFave {
                        ListCell(sport: item)
                    }
                }
            }
            .navigationTitle("Sport")
            .overlay(NavigationLink(destination: ListCell(sport: Sport.init(name: "Run", isFave: false)), isActive: $router.isRunShowed) {
            EmptyView().hidden()
            })
        }
    }
}

struct ListCell: View {
    
    let sport: Sport
    
    var body: some View {
        NavigationLink(destination: NavLinkView(sportName: sport.name)) {
            Text(sport.name)
        }
    }
}

struct NavLinkView: View {
    
    let sportName: String
    
    var body: some View {
        Text(sportName)
    }
}




struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
