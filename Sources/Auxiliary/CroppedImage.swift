/*
 
 Project: SwiftUIExtension
 File: CroppedImage.swift
 Created by: Egor Boyko
 Date: 20.05.2023
 
 */

import SwiftUI

public struct CroppedImage<S: Shape, I: View>: View {
    public func frame(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        var temp = self
        temp.width = width
        temp.height = height
        return temp
    }
    
    let shape: () -> S
    let image: () -> I
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    
    public var body: some View {
        Group{
            self.image()
        }
        .frame(width: self.width, height: self.height)
        .clipped()
        .contentShape(self.shape())
        .clipShape(self.shape())
    }
}
