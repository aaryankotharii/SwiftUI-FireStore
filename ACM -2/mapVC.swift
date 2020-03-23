//
//  mapVC.swift
//  ACM -2
//
//  Created by Aaryan Kothari on 23/03/20.
//  Copyright © 2020 Aaryan Kothari. All rights reserved.
//

import SwiftUI
import MapKit

struct mapVC: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
        VStack(spacing:0){
            MapView(coordinate: CLLocationCoordinate2D(latitude: 18.956941911258514, longitude: 72.80785789753732))
                .edgesIgnoringSafeArea(.top)
            HStack {
                Text("Move pin...")
                    .font(.system(size:18))
                    .fontWeight(.thin)
                Spacer()
                Button(action: dissmissView){
                    Image("Save")
                        .renderingMode(.original)
                        .resizable()
                    .frame(width: 104, height: 42)
                    
                }
            }.padding([.top, .leading, .trailing], 20.0)
                .padding(.bottom,35)
            .background(Color("map"))
            
        }.edgesIgnoringSafeArea(.bottom)
            
            Image("locPin").resizable().aspectRatio(contentMode: .fit).frame(width: 48, height: 45)

    }
    }
    func dissmissView(){
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct mapVC_Previews: PreviewProvider {
    static var previews: some View {
        mapVC()
    }
}
