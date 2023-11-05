/*
 
 Project: SwiftUIExtension
 File: SwipeModifier.swift
 Created by: Egor Boyko
 Date: 05.11.2023
 
*/

import SwiftUI

public struct SwipeModifier: ViewModifier {
    
    public enum Direction {
        case left, right, up, down
    }
    
    public init(drag: Binding<Direction?>, distance: CGFloat = 50){
        self._drag = drag
        self.distance = distance < 30 ? 30 : distance
    }
    
    @Binding var drag: SwipeModifier.Direction?
    private let distance: CGFloat
    private var minimum: CGFloat { distance - 1 }
    
    private func gesture(value: DragGesture.Value){
        if value.translation.height > self.distance {
            self.drag = .down
        }
        if value.translation.height < -self.distance {
            self.drag = .up
        }
        if value.translation.width < -self.distance {
            self.drag = .left
        }
        if value.translation.width > self.distance {
            self.drag = .right
        }
    }
    
    public func body(content: Content) -> some View {
        content
            .gesture(DragGesture(minimumDistance: 30, coordinateSpace: .local)
                .onChanged{
                    self.gesture(value: $0)
                }
                .onEnded{ _ in
                    drag = nil
                }
            )
    }
}
