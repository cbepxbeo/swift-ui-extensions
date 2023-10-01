/*
 
 Project: SwiftUIExtension
 File: ReverseMaskModifier.swift
 Created by: Egor Boyko
 Date: 24.09.2023
 
*/

import SwiftUI

struct ReverseMaskModifier<Mask: View>: ViewModifier {
    let mask: () -> Mask
    func body(content: Content) -> some View {
        content.mask(
            ZStack {
                Rectangle()
                mask()
                    .blendMode(.destinationOut)
            }
        )
    }
}
