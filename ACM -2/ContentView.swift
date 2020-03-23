//
//  ContentView.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingDetail = false
    var body: some View {
        NavigationView{
            VStack {
                Text("Hello, World!")
            }.navigationBarItems(trailing: Button(action: showProfile){
                Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 31, height: 31, alignment: .center)
                .padding(.top, 90.0)
                    .foregroundColor(.green)
            }.sheet(isPresented: $showingDetail){
                    ProfileVC()
            }).navigationBarTitle("Welcome")
        }
    }
    func showProfile(){
        self.showingDetail.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
