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
                .offset(x: 0, y: 45)
                    //.padding(.top, 90)
                    .foregroundColor(.green)
            }.sheet(isPresented: $showingDetail){
                    ProfileVC()
            }).navigationBarTitle("Welcome")
        }//.padding(.top,0)
            .edgesIgnoringSafeArea(.all).offset(x: 0, y: -1)
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
