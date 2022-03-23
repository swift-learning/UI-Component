//
//  ContentView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChatsView()
                .tabItem() {
                    Image(systemName: "message.fill")
                    Text("微信")
                }
            ContactsView()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("通讯录")
                }
            DiscoverView()
                .tabItem() {
                    Image(systemName: "safari.fill")
                    Text("发现")
                }
            MyInfoView()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("我")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
