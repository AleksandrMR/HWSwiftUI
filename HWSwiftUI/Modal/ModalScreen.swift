//
//  ModalView.swift
//  HWSwiftUI
//
//  Created by Aleksandr Milashevski on 09/03/21.
//

import SwiftUI

struct ModalScreen: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
        Text("ModalView")
            .padding()
        Button(action: {self.isPresented.toggle()}, label: {
            Text("Present")
            
        })
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
        .cornerRadius(10)
        .shadow(radius: 20)
        .sheet(isPresented: $isPresented, content: {
            ModalView(dismissFlag: self.$isPresented)
        })
            }
        }
    }
}

struct ModalView: View {
    @Binding var dismissFlag: Bool
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Button(action: {self.dismissFlag = false}, label: {
                Text("Dismiss screen")
            })
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
