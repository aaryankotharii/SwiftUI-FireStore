//
//  ProfileVC.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ProfileVC: View {
    var body: some View {
        NavigationView{
        VStack{
            Spacer()
            profileForm()
            Spacer()
            addButton()
            Spacer()
            }.navigationBarTitle("New Profile").background(Color("profileVC"))
        .edgesIgnoringSafeArea(.all)
        }
    }
}

struct addButton: View {
    var body: some View{
        Button(action: {
            print("add clicked")
        }){
            HStack {
                Image(systemName: "plus.rectangle")
                Text("ADD")
            }.foregroundColor(.white)
             .frame(width: 200, height: 50, alignment: .center)
             .background(Color(red: 0.105, green: 0.14, blue: 0.423)).cornerRadius(26)
        }
    }
}

struct ProfileVC_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVC()
    }
}
