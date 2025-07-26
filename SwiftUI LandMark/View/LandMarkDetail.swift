//
//  LandMarkDetail.swift
//  SwiftUI LandMark
//
//  Created by Pawan kumar Verma on 26/07/25.
//
import SwiftUI

struct LandMarkDetail: View {
    
    var landMark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: landMark.locationCoordinates)
                    .frame(height: 300)
                
                CircleImage(image: landMark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landMark.name)
                        .font(.title)
                    HStack {
                        Text(landMark.park)
                        Spacer()
                        Text(landMark.state)
                    }
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About \(landMark.name )")
                        .font(.title2)
                    Text("\(landMark.description)")
                        .font(.subheadline)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle(landMark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandMarkDetail (landMark: landmarks.first!)
}
