//
//  CircleImageView.swift
//  LandMarkBookSwiftUI
//
//  Created by Halil Keremoğlu on 8.10.2025.
//

import SwiftUI

struct CircleImageView: View {
    
    var image: Image
    
    
    var body: some View {
        image
        .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .shadow(radius:10)
        
    }
}

#Preview {
    CircleImageView(image: Image("london bridge"))
}
