//
//  MomentsView.swift
//  UI-Component
//
//  Created by weisite on 2022/3/23.
//

import SwiftUI

struct MomentsView: View {
    let user: User
    
    var body: some View {
        ScrollView() {
            BackgroundImgView(picName: user.backgroundPicName)
            UserNameAvatarView(name: user.name, avatar: user.avatar)
                .padding(.trailing)
                .offset(y: -70)
            ForEach(user.moments, id: \.self) { moment in
                MomentView(moment: moment)
            }
        }
        .navigationBarTitle("朋友圈", displayMode: .inline)
    }
}

struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView(user: defaultUser)
    }
}
