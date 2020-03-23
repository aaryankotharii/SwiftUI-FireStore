//
//  ProfileVC.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct ProfileVC: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView{
        VStack{
            Spacer()
            profileForm()
            Spacer()
                    Button(action: dissmissView){
                    HStack {
                        Image(systemName: "plus.rectangle")
                        Text("ADD")
                    }.foregroundColor(.white)
                     .frame(width: 200, height: 50, alignment: .center)
                     .background(Color(red: 0.105, green: 0.14, blue: 0.423)).cornerRadius(26)
                }
            
            Spacer()
            }.navigationBarTitle("New Profile").background(Color("profileVC"))
        .edgesIgnoringSafeArea(.all)
        }
    }
    func dissmissView(){
          self.presentationMode.wrappedValue.dismiss()
      }
}






struct ProfileVC_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVC()
    }
}
