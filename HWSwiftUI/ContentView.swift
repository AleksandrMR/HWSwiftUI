//
//  ContentView.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 09/03/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        //                TabView(selection: .constant(0)) {
        TabView(selection: $router.selection) {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                } .tag(0)
            ListScreen()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                } .tag(1)
            ModalScreen()
                .tabItem {
                    Image(systemName: "rectangle.on.rectangle")
                    Text("Modal")
                } .tag(2)
            MapView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Map")
                } .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
