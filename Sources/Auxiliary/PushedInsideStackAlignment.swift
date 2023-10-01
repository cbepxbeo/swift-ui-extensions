/*
 
 Project: SwiftUIExtension
 File: PushedInsideStackAlignment.swift
 Created by: Egor Boyko
 Date: 24.09.2023
 
 */

@frozen public enum PushedInsideStackAlignment {
    ///Fills the space and tries to move the view up
    case top
    ///Fills the space and tries to move the view down
    case bottom
    ///Fills the space and tries to move the view left
    case leading
    ///Fills the space and tries to move the view right
    case trailing
    ///Fills the space and tries to move the view to the top right corner
    case topTrailing
    ///Fills the space and tries to move the view to the top left corner
    case topLeading
    ///Fills the space and tries to move the view to the bottom right corner
    case bottomTrailing
    ///Fills the space and tries to move the view to the bottom left corner
    case bottomLeading
    ///Pushes the view onto the stack without filling space
    case none
    ///Pushes the view onto the stack and fills the space at the top and bottom, moving the view to the center
    case verticalCenter
    ///Pushes the view onto the stack and fills the space at the left and right, moving the view to the center
    case horizontalCenter
    ///Places the view on the stack and fills all available space
    case center
}
