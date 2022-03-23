//
//  DiscoverView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: MomentsView()) {
                        DiscoverItemView(iconName: "circle.circle.fill", itemName: "朋友圈")
                    }
                    DiscoverItemView(iconName: "gamecontroller.fill", itemName: "游戏")
                    DiscoverItemView(iconName: "circle.dashed", itemName: "小程序")
                }
                .navigationTitle("发现")
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color(.systemGray6))
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
