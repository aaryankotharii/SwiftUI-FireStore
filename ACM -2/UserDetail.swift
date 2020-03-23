//
//  UserDetail.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI
import MapKit

struct UserDetail: View {
    @State var name = "Aaryan Kothari"
    @State var birthday = "04/10/2001"
    @State var phone = "8286040000"
    @State var gender = "0"
    @State var location = "Mumbai"
    @State var country = "India"
    @State var lat  = "18.956941911258514"
    @State var long  = "72.80785789753732"
    var genders = ["Male","Female"]
    var profiles = ["person","f"]
    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2D(latitude: Double(lat)!, longitude: Double(long)!))
                .edgesIgnoringSafeArea(.top)
                .frame(height:250)
            Image(profiles[Int(gender)!])
                .resizable()
                .frame(width: 200, height: 200)
                .offset(x: 0, y: -79)
            Spacer()
            VStack(spacing:20){
                customText(title: "Name :", message: name)
                customText(title: "Birthday :", message: birthday)
                customText(title: "Phone :", message: phone)
                customText(title: "Gender :", message: genders[Int(gender)!])
                customText(title: "Location :", message: location)
                customText(title: "Country :", message: country)
            }.offset(y:-111)
            Spacer()
        }
    }
}

struct customText: View {
    @State var title: String
    @State var message: String
    var body: some View{
        HStack {
            Text(title)
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 100, alignment: .leading)
            Text(message)
                .font(.system(size: 17, weight: .regular))
        Spacer()
        }.frame(minWidth: .zero, maxWidth: .infinity)
        .padding(.horizontal, 20.0)
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail()
    }
}
