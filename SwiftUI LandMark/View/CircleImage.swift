//
//  CircleImage.swift
//  SwiftUI LandMark
//
//  Created by Pawan kumar Verma on 25/07/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.white)
                    .shadow(radius: 7 )
            }
    }
}


#Preview {
    CircleImage(image: Image("svp"))
}
