//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by YILDIRIM on 23.03.2023.
//

import SwiftUI

extension View{
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
