/*
 
 Project: SwiftUIExtension
 File: ObservableObject+Method+Render.swift
 Created by: Egor Boyko
 Date: 20.05.2023
 
*/

import SwiftUI
import Combine

extension ObservableObject where Self.ObjectWillChangePublisher == ObservableObjectPublisher {
    public func render(_ animation: Animation? = nil){
        withAnimation(animation) {
            self.objectWillChange.send()
        }
    }
}
