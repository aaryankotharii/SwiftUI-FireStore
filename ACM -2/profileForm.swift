//
//  profileForm.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct profileForm: View {
    @State var name = ""
    @State var birthday = ""
    @State var phone = ""
    @State var gender = 0
    var names = ["Name 💁🏻‍♂️","Name 💁🏼‍♀️"]
    var genders = ["Male","Female"]
    
    @State var showingDetail = false
    var body: some View {
        VStack(spacing:31) {
            HStack {
                Text(self.names[self.gender])
                Spacer()
                textView(name: $name)
            }
            HStack {
                Text("Birthday 🎂")
                    .font(.system(size: 26))
                    .fontWeight(.medium)
                Spacer()
                textView(name: $birthday)
            }
            HStack {
                Text("Phone 📱")
                Spacer()
                textView(name: $phone)
                    .keyboardType(.phonePad)
            }
            HStack {
                Text("Gender 🚻")
                Picker("",selection: $gender) {
                ForEach(0..<genders.count){
                        Text("\(self.genders[$0])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            HStack{
                Text("Location📍")
                Spacer()
                Button(action: {
                    print("tap pressed")
                    self.showingDetail.toggle()
                }){
                    Image(systemName: "plus.circle")
                }.sheet(isPresented: $showingDetail){
                    mapVC()
                }
            }
        }
        .padding(.horizontal,18)
        .font(Font.system(size: 27, weight: .medium))
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 335, alignment: .center).background(Color("formView"))
        .cornerRadius(26)
                    .shadow(color: Color(hue: 0.001, saturation: 0.0, brightness: 0.0, opacity: 0.5), radius: 1, x: 1, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 26)
            .stroke(Color(red: 0.549, green: 0.58, blue: 0.624), lineWidth: 2)
            )
            .padding(.horizontal, 18.0)
    }
}

struct textView : View{
    @Binding var name : String
    var body: some View{
        TextField("", text: $name)
              .frame(width: 200, height: 34)
              .background(Color.white)
              .cornerRadius(4)
              .overlay(
              RoundedRectangle(cornerRadius: 4)
              .stroke(Color(red: 0.592, green: 0.592, blue: 0.592), lineWidth: 1))
          .multilineTextAlignment(.trailing)
          .font(.system(size: 18, weight: .light))
    }
}

struct profileForm_Previews: PreviewProvider {
    static var previews: some View {
        profileForm()
    }
}
