//
//  DiscoverView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct DiscoverView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        VStack {
            Text("发现")
            List {
                HStack() {
                    Image(systemName: "circle.circle.fill")
                        .frame(width: 20, height: 20)
                    Text("朋友圈")
                        .offset(x: 6)
                }
                HStack() {
                    Image(systemName: "gamecontroller.fill")
                        .frame(width: 20, height: 20)
                    Text("游戏")
                        .offset(x: 6)
                }
                HStack() {
                    Image(systemName: "circle.dashed")
                        .frame(width: 20, height: 20)
                    Text("小程序")
                        .offset(x: 6)
                }
            }
        }
        .background(Color(.systemGray6))
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
