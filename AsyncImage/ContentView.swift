//
//  ContentView.swift
//  AsyncImage
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import SwiftUI

struct ContentView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        VStack {
//            AsyncImage(url: url) { returnedImage in
//                returnedImage
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100, alignment: .center)
//                    .cornerRadius(50)
//            } placeholder: {
//                ProgressView()
//            }
//           
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(20)
                case .failure(let error):
                    Image(systemName: "questionmark")
                        .font(.headline)
                    
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }

                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
