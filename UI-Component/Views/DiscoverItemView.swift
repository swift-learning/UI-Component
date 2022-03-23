//
//  DiscoverItemView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct DiscoverItemView: View {
    let iconName: String
    let itemName: String
    
    var body: some View {
        HStack() {
            Image(systemName: iconName)
                .frame(width: 20, height: 20)
            Text(itemName)
                .offset(x: 6)
        }
    }
}
