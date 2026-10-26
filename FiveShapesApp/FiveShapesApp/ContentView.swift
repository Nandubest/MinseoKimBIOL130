//
//  ContentView.swift
//  FiveShapesApp
//
//  Created by Minseo Kim on 10/26/26.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var body: some View {
        VStack {
            Text("Five Shapes")
                .font(.largeTitle)
            
            Button("Show Shapes") {
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
        }
        .padding()
    }
}
