/*
 
 Project: SwiftUIExtension
 File: View+Modifier+PushedInsideStack.swift
 Created by: Egor Boyko
 Date: 24.09.2023
 
 */

import SwiftUI

public extension View {
    ///Wraps the view in a stack and fills the free space according to the alignment
    func pushedInsideStack(_ alignment: PushedInsideStackAlignment = .none) -> some View {
        self.modifier(PushedInsideStackModifier(alignment: alignment))
    }
}
