//
//  ImmersiveView.swift
//  FiveShapesApp
//
//  Created by Minseo Kim on 10/26/26.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            let sphere1 = ModelEntity(
                mesh: .generateCone(height: 0.1, radius: 0.1),
                materials: [SimpleMaterial(color: .cyan, isMetallic: true)])
            sphere1.position = [-0.6, 1.2, -1]
            content.add(sphere1)
            
            let sphere2 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .red, isMetallic: false)])
            sphere2.position = [-0.3, 1.2, -1]
            content.add(sphere2)
            
            let box1 = ModelEntity(
                mesh: .generateCylinder(height: 0.1, radius: 0.1),
                materials: [SimpleMaterial(color: .yellow, isMetallic: false)])
            box1.position = [0, 1.2, -1]
            content.add(box1)
            
            let box2 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [SimpleMaterial(color: .white, isMetallic: false)])
            box2.position = [0.3, 1.2, -1]
            content.add(box2)
            
            let sphere3 = ModelEntity(
                mesh: .generatePlane(width: 0.2, height: 0.1),
                materials: [SimpleMaterial(color: .purple, isMetallic: true)])
            sphere3.position = [0.6, 1.2, -1]
            content.add(sphere3)
          
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                var t1 = sphere1.transform
                t1.translation = [-0.6, 1.6, -1]
                sphere1.move(to: t1, relativeTo: sphere1.parent, duration: 2.0)
                
                var t2 = sphere2.transform
                t2.translation = [-0.3, 1.6, -1]
                sphere2.move(to: t2, relativeTo: sphere2.parent, duration: 2.0)
                
                var t3 = box1.transform
                t3.translation = [0, 1.6, -1]
                box1.move(to: t3, relativeTo: box1.parent, duration: 2.0)
                
                var t4 = box2.transform
                t4.translation = [0.3, 1.6, -1]
                box2.move(to: t4, relativeTo: box2.parent, duration: 2.0)
                
                var t5 = sphere3.transform
                t5.translation = [0.6, 1.6, -1]
                sphere3.move(to: t5, relativeTo: sphere3.parent, duration: 2.0)
            }
        }
    }
}
