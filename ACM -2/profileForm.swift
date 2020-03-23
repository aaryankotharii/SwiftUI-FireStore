//
//  profileForm.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct profileForm: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 384, alignment: .center).background(Color(red: 0.696, green: 0.769, blue: 0.866))
        .cornerRadius(26)
        .overlay(
            RoundedRectangle(cornerRadius: 26)
            .stroke(Color(red: 0.549, green: 0.58, blue: 0.624), lineWidth: 2)
            )
            .shadow(color: Color(hue: 0.001, saturation: 0.0, brightness: 0.0, opacity: 0.5), radius: 1, x: 1, y: 2)
            .padding(.horizontal, 18.0)

    }
}

struct profileForm_Previews: PreviewProvider {
    static var previews: some View {
        profileForm()
    }
}
