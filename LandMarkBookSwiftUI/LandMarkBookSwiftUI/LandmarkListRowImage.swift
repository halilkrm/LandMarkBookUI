//
//  LandmarkListRowImage.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI

struct LandmarkListRowImage: View {
    var landmarkImageName: String
    var body: some View {
        HStack{
          Image(landmarkImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50,alignment: .leading)
            
            
        }
    }
}

#Preview {
    LandmarkListRowImage(landmarkImageName:"pisatower")
}
