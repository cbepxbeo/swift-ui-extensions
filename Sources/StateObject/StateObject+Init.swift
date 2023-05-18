/*
 
 Project: SwiftUIExtension
 File: StateObject+Init.swift
 Created by: Egor Boyko
 Date: 18.05.2023
 
*/

import SwiftUI

public extension StateObject {
    ///A helper initializer to pass a closure that returns a model
    ///
    ///     final class ExampleModel: ObservableObject {
    ///         init(value: Bool){
    ///             self.value = value
    ///         }
    ///         let value: Bool
    ///     }
    ///
    ///     struct ExampleView: View {
    ///
    ///         init(value: Bool){
    ///             let closure = { ExampleModel(value: value) }
    ///             self._viewModel = StateObject(initialValue: closure)
    ///         }
    ///
    ///         @StateObject var viewModel: ExampleModel
    ///
    ///         var body: some View {
    ///             //...code
    ///         }
    ///     }
    ///
    /// - Parameter initialValue:`() -> ObjectType`  ( ObjectType :  ObservableObject)
    /// - Note: Keep in mind that the code described in the closure will not be released
    ///         until the model is released when the tree is rebuilt.
    /// - Warning: Don't store closures in external resources
    @inlinable init(initialValue: @escaping () -> ObjectType) where ObjectType : ObservableObject {
        self.init(wrappedValue: initialValue())
    }
}
