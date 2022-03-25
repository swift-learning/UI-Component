//
//  MyInfoView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct MyInfoView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: MyAvatarView()) {
                        HStack(alignment: .top) {
                            Image(user.avatar)
                                .resizable()
                                .frame(width: 80, height: 80)
                            Text(user.name)
                                .fontWeight(.bold)
                        }
                    }
                }
                .navigationTitle("我")
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(Color(.systemGray6))
        }
    }
}

struct MyInfoView_Preview: PreviewProvider {
    static var previews: some View {
        MyInfoView()
            .environmentObject(defaultUser)
    }
}
