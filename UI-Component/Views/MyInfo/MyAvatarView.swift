//
//  MyAvatarView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/25.
//

import SwiftUI

struct MyAvatarView: View {
    @EnvironmentObject var user: User
    @State var showConfirmation = false
    
    var body: some View {
        Image(user.avatar)
            .resizable()
            .scaledToFit()
            .navigationTitle("个人")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar() {
                Button {
                    showConfirmation = true
                } label: {
                    Image(systemName: "ellipsis")
                }
                .confirmationDialog("Change avatar?", isPresented: $showConfirmation) {
                    Button("修改头像") {
                        user.changeAvatar()
                    }
                    Button("取消", role: .cancel) {}
                } message: {
                    Text("更多")
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
