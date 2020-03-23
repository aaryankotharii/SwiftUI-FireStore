//
//  tableView.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct tableView: View{
    var UserData = [["name":"ABCD","cityState":"Chittoor,AP"],["name":"Aaryan Kothari","cityState":"Mumbai,Maharashtra"],["name":"Person X","cityState":"Vellore,Tamil Nadu"],["name":"Test3","cityState":","],["name":"Test 2 ","cityState":"Sydney,NSW"],["name":"Person K ","cityState":"New York, NY"],["name":"Test ","cityState":"Paris,Île de France"]]
    var body: some View{
        VStack(spacing:0){
            ForEach(UserData, id:\.self){i in
                NavigationLink(destination: Text("Hello")) {
                    tableViewCell(name: i["name"] ?? "", cityState: i["cityState"] ?? "")
                    }.buttonStyle(PlainButtonStyle())
                
            }
        }
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView()
    }
}
