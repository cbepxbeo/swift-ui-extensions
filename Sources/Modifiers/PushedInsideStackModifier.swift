/*
 
 Project: SwiftUIExtension
 File: PushedInsideStackModifier.swift
 Created by: Egor Boyko
 Date: 24.09.2023
 
 */

import SwiftUI

struct PushedInsideStackModifier: ViewModifier {
    let alignment: PushedInsideStackAlignment
    func body(content: Content) -> some View {
        switch self.alignment {
        case .top:
            VStack{
                content
                Spacer()
            }
        case .bottom:
            VStack{
                Spacer()
                content
            }
        case .leading:
            HStack{
                content
                Spacer()
            }
        case .trailing:
            HStack{
                Spacer()
                content
            }
        case .topTrailing:
            VStack{
                HStack{
                    Spacer()
                    content
                }
                Spacer()
            }
        case .topLeading:
            VStack{
                HStack{
                    content
                    Spacer()
                }
                Spacer()
            }
        case .bottomTrailing:
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    content
                }
            }
        case .bottomLeading:
            VStack{
                Spacer()
                HStack{
                    content
                    Spacer()
                }
            }
        case .none:
            VStack{
                content
            }
        case .verticalCenter:
            VStack{
                Spacer()
                content
                Spacer()
            }
        case .horizontalCenter:
            HStack{
                Spacer()
                content
                Spacer()
            }
        case .center:
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    content
                    Spacer()
                }
                Spacer()
            }
        }
    }
}
