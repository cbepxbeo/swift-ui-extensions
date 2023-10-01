/*
 
 Project: SwiftUIExtension
 File: StateObject+Init.swift
 Created by: Egor Boyko
 Date: 20.05.2023
 
 */

import SwiftUI

extension Image {
    public func cropShape<S: Shape>(contentMode: ContentMode = .fill, shape: @escaping () -> S) -> CroppedImage<S, some View> {
        .init(shape: shape) {
            self
                .resizable()
                .aspectRatio(contentMode: contentMode)
            
        }
    }
}
