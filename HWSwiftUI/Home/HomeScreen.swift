//
//  HomeView.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 09/03/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("HomeView")
                .padding()
            Button(action: {
                router.selection = 1
                router.isRunShowed = true
            }) {
                Text("Go to the Run")
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(10)
            .shadow(radius: 20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
