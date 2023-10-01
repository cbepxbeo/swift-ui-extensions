/*
 
 Project: SwiftUIExtension
 File: View+Modifier+ReverseMask.swift
 Created by: Egor Boyko
 Date: 18.05.2023
 
*/

import SwiftUI

public extension View {
    func reverseMask<Mask: View>(
        @ViewBuilder _ mask: @escaping () -> Mask) -> some View {
            self.modifier(ReverseMaskModifier(mask: mask))
        }
}


