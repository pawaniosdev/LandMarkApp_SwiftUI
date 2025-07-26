//
//  LandMarkList.swift
//  SwiftUI LandMark
//
//  Created by Pawan kumar Verma on 26/07/25.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks  ) { landMark in
                
                NavigationLink {
                    LandMarkDetail(landMark: landMark)
                } label: {
                    LandmarkRow(landmark: landMark)
                }

                
            }
            .listStyle(.plain) 
            .navigationTitle("LandMarks")
        }
    }
}

#Preview {
    LandMarkList()
}
