//
//  BackgroundMaterialsView.swift
//  AsyncImage
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import SwiftUI

struct BackgroundMaterialsView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4, alignment: .center)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("carrie")
        )
    }
}

#Preview {
    BackgroundMaterialsView()
}
