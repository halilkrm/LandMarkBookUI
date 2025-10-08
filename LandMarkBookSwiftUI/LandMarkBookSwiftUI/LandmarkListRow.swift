//
//  LandmarkListRow.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI

struct LandmarkListRow: View {
    var landmark : Landmark
    var body: some View {
        HStack{
            LandmarkListRowImage(landmarkImageName: landmark.imageName)
            Text(landmark.name)
            
        }

    }
}

#Preview {
    LandmarkListRow(landmark: londonBridgeLandmark)
}
