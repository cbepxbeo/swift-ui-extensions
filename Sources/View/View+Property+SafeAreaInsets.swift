/*
 
 Project: SwiftUIExtension
 File: View+Property+SafeAreaInsets.swift
 Created by: Egor Boyko
 Date: 01.10.2023
 
 */

import SwiftUI

extension View {
    public var safeAreaInsets: UIEdgeInsets {
        guard #available(iOS 15, *) else {
            return UIApplication.shared.windows.first?.safeAreaInsets ?? .zero
        }
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            return scene?.windows.first?.safeAreaInsets ?? .zero
    }
}
