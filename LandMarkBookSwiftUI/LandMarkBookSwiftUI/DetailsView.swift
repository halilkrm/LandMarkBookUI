//
//  ContentView.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenLandmark : Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: chosenLandmark.locationCoordinate)
                .frame(height:UIScreen.main.bounds.height * 0.3)
            
                .edgesIgnoringSafeArea(.top)
            
            
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.15)
                .padding(.bottom,-100)
            
            VStack(alignment: .leading){
                
                Text(chosenLandmark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                HStack{
                    Text(chosenLandmark.country)
                        .font(.subheadline)
                    Spacer()
                    Text(chosenLandmark.category)
                        .font(.subheadline)
                }
                
                
                
            }.padding()
        }.navigationBarTitle(Text(chosenLandmark.name))
        .padding()
    }
}

#Preview {
    DetailsView(chosenLandmark: londonBridgeLandmark)
}
