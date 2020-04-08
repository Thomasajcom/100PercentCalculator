//
//  ViewModifiers.swift
//  100 Percent Calculator
//
//  Created by Thomas Andre Johansen on 30/03/2020.
//  Copyright © 2020 Appkokeriet. All rights reserved.
//

import SwiftUI

struct KeyboardButton: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 10)
        .foregroundColor(.primaryApp))
        .shadow(radius: 5)
        
    }
}

struct LargeTitleHeader: ViewModifier {
    var radius: CGFloat = 0.0
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(10)
            .background(RoundedRectangle(cornerRadius: self.radius).foregroundColor(.primaryApp))
            .shadow(radius: 10)
    }
}

struct SectionViewGroup: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
    }
}

struct ModifiedRoundedRectangle: ViewModifier {
    var color: Color = .primaryApp
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundColor(self.color))
            .shadow(radius: 5)
    }
}

struct FavoriteTitleHeader: ViewModifier {
    @EnvironmentObject var userSettings: UserSettings
    func body(content: Content) -> some View {
        content
            .font(userSettings.compactFavorites ? .headline : .largeTitle)
            .padding(.horizontal, 5)
    }
}

struct FavoriteCellBody: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(
                Rectangle().stroke(lineWidth: 1).foregroundColor(.primaryApp).shadow(color: .primaryApp, radius: 1, x: 0, y: 0)
            )
            .padding(.horizontal, 3)
    }
}

//Card shape
struct Card: ViewModifier {
    var width: CGFloat
    var height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: self.width, height: self.height)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.primaryApp))
            .shadow(radius: 5)
    }
}

