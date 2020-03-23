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
                    .padding(.top, 55.0)
                ScrollView{
                tableView()
                    .padding(.top, 5.0)
                }
                Spacer()
            }.edgesIgnoringSafeArea(.all)
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

struct tableView: View{
    var UserData = [["name":"ABCD","cityState":"Chittoor,AP"],["name":"Aaryan Kothari","cityState":"Mumbai,Maharashtra"],["name":"Person X","cityState":"Vellore,Tamil Nadu"],["name":"Test3","cityState":","],["name":"Test 2 ","cityState":"Sydney,NSW"],["name":"Person K ","cityState":"New York, NY"],["name":"Test ","cityState":"Paris,Île de France"]]
    var body: some View{
        VStack(spacing:0){
            ForEach(UserData, id:\.self){i in
                tableViewCell(name: i["name"] ?? "", cityState: i["cityState"] ?? "")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
