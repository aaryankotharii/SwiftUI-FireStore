//
//  tableView.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct tableView: View{
    
    var UserData = [["birthday": "23/05/2042", "city": "Chittoor", "lat": "13.2918756741115", "phone": "123456", "gender": "1", "name": "ABCD", "state": "AP", "long": "79.17642691942206", "country": "India"],
    ["birthday": "04/10/2001", "gender": "0", "state": "Maharashtra", "country": "India", "name": "Aaryan Kothari", "phone": "8286040000", "lat": "18.956941911258514", "city": "Mumbai", "long": "72.80785789753732"],
    ["country": "India", "gender": "0", "long": "79.1584925787036", "lat": "12.967473685873443", "name": "Person X", "birthday": "22/03/2017", "phone": "765432987", "city": "Vellore", "state": "Tamil Nadu"],
        ["state": "", "name": "Test3", "phone": "12S", "birthday": "21/03/2020", "gender": "1", "city": "", "long": "0.0", "country": "", "lat": "0.0"],
    ["lat": "-33.878054366995485", "city": "Sydney", "name": "Test 2", "state": "NSW", "gender": "0", "country": "Australia", "phone": "1234512345", "long": "151.20846365071674", "birthday": "22/03/1996"],
    ["name": "Person K", "birthday": "22/03/1987", "gender": "0", "phone": "9874564560", "country": "United States", "lat": "40.755015909362186", "long": "-73.98848440898568", "state": "NY", "city": "New York"],
    ["birthday": "05/10/2018", "gender": "1", "city": "Paris", "country": "France", "phone": "8877665544", "name": "Test", "state": "Île-de-France", "lat": "48.85823285236623", "long": "2.2944104239592775"],
    ["state": "Bangkok", "name": "Person A", "gender": "1", "country": "Thailand", "phone": "9820202020", "lat": "13.701837752839907", "city": "Bangkok", "birthday": "29/02/2020", "long": "100.49966985787461"],
    ["long": "-26.98173749475464", "birthday": "22/03/2017", "lat": "80.46325784627442", "name": "abc", "city": "", "state": "Nordgronland", "phone": "8286040000", "country": "Greenland", "gender": "1"]]
    
    var body: some View{
        VStack(spacing:0){
            ScrollView(showsIndicators: false){
            ForEach(UserData, id:\.self){i in
                NavigationLink(destination: UserDetail(name: i["name"] ?? "", birthday: i["birthday"] ?? "", phone: i["phone"] ?? "", gender: i["gender"] ?? "", location: i["city"] ?? "", country: i["country"] ?? "", lat:i["lat"] ?? "",long: i["long"] ?? "")) {
                    tableViewCell(name: i["name"] ?? "", cityState: (i["city"]! + "," + i["state"]!),profile: i["gender"] ?? "0")
                    }.buttonStyle(PlainButtonStyle())
                }
            }
        }
    }
}

struct tableView_Previews: PreviewProvider {
    static var previews: some View {
        tableView()
    }
}
