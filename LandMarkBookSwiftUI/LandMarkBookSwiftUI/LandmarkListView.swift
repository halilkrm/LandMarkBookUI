//
//  LandmarkListView.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView{
            List(landmarkArray){ landmark in
                NavigationLink(destination:DetailsView(chosenLandmark: landmark))
                {
                   LandmarkListRow(landmark: landmark)
                }
                
            }.navigationBarTitle(Text("Landmark Book"))
            
        }
    }
}

#Preview {
    LandmarkListView()
}
