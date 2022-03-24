//
//  UserNameAvatar.swift
//  UI-Component
//
//  Created by weisite on 2022/3/24.
//

import SwiftUI

struct UserNameAvatar: View {
    let name: String
    let avatar: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(name)
                .foregroundColor(.white)
            Image(avatar)
                .resizable()
                .frame(width: 80, height: 80)
        }
    }
}
