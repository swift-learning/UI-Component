//
//  MyAvatarView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/25.
//

import SwiftUI

struct MyAvatarView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        Image(user.avatar)
            .resizable()
            .scaledToFit()
            .navigationTitle("个人")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar() {
                Button {
                    user.changeAvatar()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
    }
}

struct MyAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        MyAvatarView()
            .environmentObject(defaultUser)
    }
}
