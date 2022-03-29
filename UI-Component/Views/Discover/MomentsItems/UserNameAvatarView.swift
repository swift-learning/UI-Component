//
//  UserNameAvatar.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI

struct UserNameAvatarView: View {
    @ObservedObject var user: User
    
    var body: some View {
        HStack {
            Spacer()
            Text(user.name)
                .foregroundColor(.white)
            Image(user.avatar)
                .resizable()
                .frame(width: 80, height: 80)
        }
    }
}
