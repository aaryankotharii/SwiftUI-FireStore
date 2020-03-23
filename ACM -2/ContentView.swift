//
//  ContentView.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                NavigationBar()
                Spacer()
                Text("Hello, World!")
                Spacer()
        }
    }

}

struct NavigationBar: View{
    @State var showingDetail = false
    var body: some View{
        HStack{
            Text("Welcome")
                .font(.system(size: 33, weight: .bold))
            Spacer()
             Button(action: showProfile){
                Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 31, height: 31, alignment: .center)
                    .foregroundColor(.green)
             }.padding(.trailing, 10.0).sheet(isPresented: $showingDetail){
                    ProfileVC()
                }
        }
        .padding(.horizontal, 10.0)
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
