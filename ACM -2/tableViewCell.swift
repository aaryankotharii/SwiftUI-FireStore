//
//  tableViewCell.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI

struct tableViewCell: View {
    @State var name = "Aaryan Kothari"
    @State var cityState =  "Mumbai, Maharashtra"
    var body: some View {
        HStack() {
            Image("Profile Picture")
                .renderingMode(.original)
                .resizable()
                .frame(width: 76, height: 76)
                .padding(.horizontal, 10.0)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 30, weight: .bold))
                Text(cityState)
                  .font(.system(size: 17, weight: .bold))
                .foregroundColor(Color("city-state"))
            }
            .padding(.leading, 1.0)
            Spacer()
            Image("Indicator")
                .resizable()
                .frame(width: 20, height: 31)
                .padding(.trailing,12)
            
        }
        .frame(minWidth: .zero, maxWidth: .infinity)
        .frame(height: 100)
        .background(Color("Color"))
        .cornerRadius(8)
        .padding(.horizontal, 18.0)
        .padding(.bottom,16)


        
    }
}

struct tableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        tableViewCell()
    }
}
